CLASS zcl_oops_flightref DEFINITION
  PUBLIC
  INHERITING FROM zcl_oops_flightdetails
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS: get_flightdetails REDEFINITION,
              get_flightref REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_oops_flightref IMPLEMENTATION.
  METHOD get_flightdetails.

  ENDMETHOD.

  METHOD get_flightref.
    SELECT SINGLE FROM /dmo/connection
        FIELDS *
        WHERE carrier_id EQ @lv_carrierid
          AND connection_id EQ @lv_connectionid
          INTO @DATA(ls_flightref).
    IF sy-subrc EQ 0.
      lv_airport_from_id = ls_flightref-airport_from_id.
      lv_airport_to_id   = ls_flightref-airport_to_id.
      lv_departure_time  = ls_flightref-departure_time.
      lv_arrival_time    = ls_flightref-arrival_time.
      lv_distance        = ls_flightref-distance.
      lv_distance_unit   = ls_flightref-distance_unit.
    ENDIF.
            " Handle the case where no matching record is found
  ENDMETHOD.

ENDCLASS.
