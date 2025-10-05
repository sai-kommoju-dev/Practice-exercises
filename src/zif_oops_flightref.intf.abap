INTERFACE zif_oops_flightref
  PUBLIC .
  METHODS get_flightref  IMPORTING lv_carrierid       TYPE /dmo/carrier_id
                                   lv_connectionid    TYPE /dmo/connection_id
                         EXPORTING lv_airport_from_id TYPE /dmo/airport_from_id
                                   lv_airport_to_id   TYPE /dmo/airport_to_id
                                   lv_departure_time  TYPE /dmo/flight_departure_time
                                   lv_arrival_time    TYPE /dmo/flight_arrival_time
                                   lv_distance        TYPE /dmo/flight_distance
                                   lv_distance_unit   TYPE msehi.
ENDINTERFACE.
