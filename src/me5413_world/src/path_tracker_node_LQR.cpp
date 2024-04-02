#include "me5413_world/math_utils.hpp"
#include "me5413_world/path_tracker_node_LQR.hpp"

namespace me5413_world
{

// Dynamic Parameters
double SPEED_TARGET;
double PID_Kp, PID_Ki, PID_Kd;
double STANLEY_K;
bool PARAMS_UPDATED;

void dynamicParamCallback(const me5413_world::path_trackerConfig& config, uint32_t level)
{
  // Common Params
  SPEED_TARGET = config.speed_target;
  // PID
  PID_Kp = config.PID_Kp;
  PID_Ki = config.PID_Ki;
  PID_Kd = config.PID_Kd;
  // Stanley
  STANLEY_K = config.stanley_K;

  PARAMS_UPDATED = true;
}

PathTrackerNode::PathTrackerNode() : tf2_listener_(tf2_buffer_)
{
  // f = boost::bind(&dynamicParamCallback, _1, _2);
  // server.setCallback(f);

  this->sub_robot_odom_ = nh_.subscribe("/gazebo/ground_truth/state", 1, &PathTrackerNode::robotOdomCallback, this);
  this->sub_local_path_ = nh_.subscribe("/me5413_world/planning/local_path", 1, &PathTrackerNode::localPathCallback, this);
  this->pub_cmd_vel_ = nh_.advertise<geometry_msgs::Twist>("/jackal_velocity_controller/cmd_vel", 1);

  this->robot_frame_ = "base_link";
  this->world_frame_ = "world";

  // Initialization PID
  // this->pid_ = control::PID(0.1, 1.0, -1.0, PID_Kp, PID_Ki, PID_Kd);

}

Eigen::MatrixXd PathTrackerNode::solveGain(double angle)
{
    // Define system matrices
    A_ = Eigen::MatrixXd(3, 3);
    A_ << 1, 0, 0,
	  0, 1, 0,
	  0, 0, 1;
    B_ = Eigen::MatrixXd(3, 2);
    B_ << std::cos(angle)*0.1, 0,
          std::sin(angle)*0.1, 0,
	  0, 0.1;
    
    // Define cost matrices
    Q_ = Eigen::MatrixXd(3, 3);
    Q_ << 30, 0, 0,
          0, 30, 0,
	  0, 0, 30;
    R_ = Eigen::MatrixXd(2, 2);
    R_ << 0.2, 0,
          0, 0.03;

    // Compute LQR gain matrix K
    Eigen::MatrixXd P_ = solveRiccatiEquation(A_, B_, Q_, R_);
    K_ = -(R_+B_.transpose()*P_*B_).inverse()*B_.transpose()*P_*A_;
    //K_ = -R_.inverse()*B_.transpose()*P_;
    return K_;
}

Eigen::MatrixXd PathTrackerNode::solveRiccatiEquation(const Eigen::MatrixXd& A, const Eigen::MatrixXd& B,
                                                      const Eigen::MatrixXd& Q, const Eigen::MatrixXd& R)
{
    double EPS = 1e-6;
    Eigen::MatrixXd Qf= Q;
    Eigen::MatrixXd P = Qf;
    Eigen::MatrixXd P_;
    for(int i=0 ;i<100; i++) {
        P_ = Q+A.transpose()*P*A-A.transpose()*P*B*(R+B.transpose()*P*B).inverse()*B.transpose()*P*A;
        if((P_-P).maxCoeff()<EPS && (P-P_).maxCoeff()<EPS) break;
        P = P_;
    }
    // std::cout << "(P_-P).maxCoeff() = " << (P_-P).maxCoeff() << std::endl;
    return P_;
}

Eigen::VectorXd PathTrackerNode::computeLQRControl(const nav_msgs::Odometry& odom_robot, const geometry_msgs::Pose& pose_goal)
{
    // Heading Error
    tf2::Quaternion q_robot, q_goal;
    tf2::fromMsg(odom_robot.pose.pose.orientation, q_robot);
    tf2::fromMsg(pose_goal.orientation, q_goal);
    const tf2::Matrix3x3 m_robot(q_robot);
    const tf2::Matrix3x3 m_goal(q_goal);

    double roll, pitch, yaw_robot, yaw_goal;
    m_robot.getRPY(roll, pitch, yaw_robot);
    m_goal.getRPY(roll, pitch, yaw_goal);

    const double heading_error = unifyAngleRange(yaw_robot - yaw_goal);

    // Lateral Error
    tf2::Vector3 point_robot, point_goal;
    tf2::fromMsg(odom_robot.pose.pose.position, point_robot);
    tf2::fromMsg(pose_goal.position, point_goal);
    const tf2::Vector3 V_goal_robot = point_robot - point_goal;
    const double angle_goal_robot = std::atan2(V_goal_robot.getY(), V_goal_robot.getX());
    const double angle_diff = angle_goal_robot - yaw_goal;
    const double lat_error = V_goal_robot.length() * std::sin(angle_diff);

    // Velocity
    tf2::Vector3 robot_vel;
    tf2::fromMsg(this->odom_world_robot_.twist.twist.linear, robot_vel);
    const double velocity = robot_vel.length();

    Eigen::VectorXd state_error(3);
    state_error << V_goal_robot.getX(), V_goal_robot.getY(), heading_error;
    K_ = solveGain(unifyAngleRange(yaw_robot));
    std::cout << "yaw_robot = " << unifyAngleRange(yaw_robot) << std::endl;
    std::cout << "point_robot = " << point_robot.getX() << ' ' << point_robot.getY() << std::endl;
    std::cout << "point_goal = " << point_goal.getX() << ' ' << point_goal.getY() << std::endl;
    // std::cout << "K = " << K_ << std::endl;
    Eigen::VectorXd u = K_ * state_error;
    // std::cout << "state_error = " << state_error << std::endl;
    // std::cout << "u = " << u << std::endl;
    return u;
}

void PathTrackerNode::localPathCallback(const nav_msgs::Path::ConstPtr& path)
{
     
    // Calculate absolute errors (wrt to world frame)
    this->pose_world_goal_ = path->poses[11].pose;
    Eigen::VectorXd control = computeLQRControl(this->odom_world_robot_, this->pose_world_goal_);
    geometry_msgs::Twist cmd_vel;
    cmd_vel.linear.x = control[0];
    cmd_vel.angular.z = control[1];
    this->pub_cmd_vel_.publish(cmd_vel);

    return;
}

void PathTrackerNode::robotOdomCallback(const nav_msgs::Odometry::ConstPtr& odom)
{
  this->world_frame_ = odom->header.frame_id;
  this->robot_frame_ = odom->child_frame_id;
  this->odom_world_robot_ = *odom.get();

  return;
}


} // namespace me5413_world

int main(int argc, char** argv)
{
  ros::init(argc, argv, "path_tracker_node_LQR");
  me5413_world::PathTrackerNode path_tracker_node;
  ros::spin();  // spin the ros node.
  return 0;
}
