CLASS zcl_oops_flightdetails DEFINITION
PUBLIC
 ABSTRACT .
*--Abstract class for flight details
  PUBLIC SECTION.
    METHODS: get_flightdetails ABSTRACT
      IMPORTING lv_carrierid    TYPE /dmo/carrier_id
                lv_connectionid TYPE /dmo/connection_id
                lv_date         TYPE /dmo/flight_date
      EXPORTING lt_flightdetails TYPE zflightdet1,
      get_flightref ABSTRACT IMPORTING lv_carrierid       TYPE /dmo/carrier_id
                                       lv_connectionid    TYPE /dmo/connection_id
                             EXPORTING lv_airport_from_id TYPE /dmo/airport_from_id
                                       lv_airport_to_id   TYPE /dmo/airport_to_id
                                       lv_departure_time  TYPE /dmo/flight_departure_time
                                       lv_arrival_time    TYPE /dmo/flight_arrival_time
                                       lv_distance        TYPE /dmo/flight_distance
                                       lv_distance_unit   TYPE msehi.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_oops_flightdetails IMPLEMENTATION.
ENDCLASS.
