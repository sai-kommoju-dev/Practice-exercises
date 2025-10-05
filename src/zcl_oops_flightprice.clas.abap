CLASS zcl_oops_flightprice DEFINITION
  PUBLIC
  INHERITING FROM zcl_oops_flightdetails
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:  get_flightref REDEFINITION,
      get_flightdetails REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_oops_flightprice IMPLEMENTATION.
  METHOD get_flightdetails.
    SELECT FROM /dmo/flight
         FIELDS *
         WHERE carrier_id = @lv_carrierid
           AND connection_id = @lv_connectionid
           AND flight_date = @lv_date
        INTO TABLE @lt_flightdetails.
  ENDMETHOD.

  METHOD get_flightref.
*--Null body implementation to avoid the class becomes as Abstract
  ENDMETHOD.

ENDCLASS.
