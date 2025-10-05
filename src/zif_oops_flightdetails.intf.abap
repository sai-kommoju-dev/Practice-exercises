INTERFACE zif_oops_flightdetails
  PUBLIC .
*--There is no implementation for Interfaces.
*--All the Interfaces are by default Public
*--Interfaces contain only Abstract methods.
*--Multiple Inheritance can be achieved by calling multiple interfaces in a single class.
*--Implementation can be done in Classes.
Methods: get_flightdetails
      IMPORTING lv_carrierid    TYPE /dmo/carrier_id
                lv_connectionid TYPE /dmo/connection_id
                lv_date         TYPE /dmo/flight_date
      EXPORTING lt_flightdetails TYPE zflightdet1.
ENDINTERFACE.
