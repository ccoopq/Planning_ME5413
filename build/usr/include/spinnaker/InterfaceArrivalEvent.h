//=============================================================================
// Copyright (c) 2001-2019 FLIR Systems, Inc. All Rights Reserved.
//
// This software is the confidential and proprietary information of FLIR
// Integrated Imaging Solutions, Inc. ("Confidential Information"). You
// shall not disclose such Confidential Information and shall use it only in
// accordance with the terms of the license agreement you entered into
// with FLIR Integrated Imaging Solutions, Inc. (FLIR).
//
// FLIR MAKES NO REPRESENTATIONS OR WARRANTIES ABOUT THE SUITABILITY OF THE
// SOFTWARE, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE, OR NON-INFRINGEMENT. FLIR SHALL NOT BE LIABLE FOR ANY DAMAGES
// SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING OR DISTRIBUTING
// THIS SOFTWARE OR ITS DERIVATIVES.
//=============================================================================

#ifndef FLIR_SPINNAKER_INTERFACE_ARRIVAL_EVENT_H
#define FLIR_SPINNAKER_INTERFACE_ARRIVAL_EVENT_H

#include "Interface/IInterfaceArrivalEvent.h"

namespace Spinnaker
{
    /**
     *  @defgroup SpinnakerEventClasses Spinnaker Event Classes
     */

    /*@{*/

    /**
     *  @defgroup InterfaceArrivalEvent_h InterfaceArrivalEvent Class
     */

    /*@{*/

    /**
     * @brief An event handler for capturing the interface arrival event.
     */
    class SPINNAKER_API InterfaceArrivalEvent : public IInterfaceArrivalEvent
    {
      public:
        /**
         * Default constructor.
         */
        InterfaceArrivalEvent();

        /**
         * Virtual destructor.
         */
        virtual ~InterfaceArrivalEvent();

        /**
         * Interface arrival event callback.
         *
         * @param interfaceID The ID of the interface that arrived
         */
        virtual void OnInterfaceArrival(std::string interfaceID) = 0;

      protected:
        /**
         * Assignment operator.
         */
        InterfaceArrivalEvent& operator=(const InterfaceArrivalEvent&);
    };

    /*@}*/

    /*@}*/
} // namespace Spinnaker

#endif // FLIR_SPINNAKER_INTERFACE_ARRIVAL_EVENT_H