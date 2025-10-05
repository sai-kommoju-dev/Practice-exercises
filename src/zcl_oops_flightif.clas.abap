CLASS zcl_oops_flightif DEFINITION
  PUBLIC
  CREATE PUBLIC .
  PUBLIC SECTION.
*--Multiple inheritance.
*--Implementing the methods of the interfaces.
*--get_flightdetails of one interface and get_flightref of the other interface are
*--being implemented here to show multiple inheritance.
    INTERFACES: zif_oops_flightdetails,
      zif_oops_flightref.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_oops_flightif IMPLEMENTATION.

  METHOD zif_oops_flightdetails~get_flightdetails.
    SELECT FROM /dmo/flight
          FIELDS *
          WHERE carrier_id = @lv_carrierid
            AND connection_id = @lv_connectionid
            AND flight_date = @lv_date
         INTO TABLE @lt_flightdetails.
  ENDMETHOD.

  METHOD zif_oops_flightref~get_flightref.
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
  ENDMETHOD.

ENDCLASS.
