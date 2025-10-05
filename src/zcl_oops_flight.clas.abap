CLASS zcl_oops_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_oops_flight IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lo_obj) = NEW zcl_oops_flightprice( ).
    DATA(lo_obj1) = NEW zcl_oops_flightref(  ).
    CALL METHOD lo_obj->get_flightdetails
      EXPORTING
        lv_carrierid     = 'SQ'
        lv_connectionid  = '0001'
        lv_date          = '20260506'
      IMPORTING
        lt_flightdetails = DATA(lt_flight_details).

  LOOP AT lt_flight_details ASSIGNING FIELD-SYMBOL(<fs_flight>).
    out->write( |Flight Carrier: { <fs_flight>-carrier_id } FlightConnection: { <fs_flight>-connection_id } Flight date: { <fs_flight>-flight_date }  Price: { <fs_flight>-price }  Currency: { <fs_flight>-currency_code } | ).
  ENDLOOP.

*--Flight Reference
     CALL METHOD lo_obj1->get_flightref
     EXPORTING
      lv_carrierid   = 'SQ'
      lv_connectionid = '0001'
      IMPORTING
       lv_airport_from_id = DATA(v_airport_from_id)
       lv_airport_to_id   = DATA(v_airport_to_id)
       lv_departure_time  = DATA(v_departure_time)
       lv_arrival_time    = DATA(v_arrival_time)
       lv_distance        = DATA(v_distance)
       lv_distance_unit   = DATA(v_distance_unit).
 out->write( |Flight Carrier: { 'SQ' } FlightConnection: { '0001' } Airport From: { v_airport_from_id } Airport To: { v_airport_to_id } Departure Time: { v_departure_time } Arrival Time: { v_arrival_time } Distance { v_distance } Distance Unit: {
v_distance_unit } | ).
   ENDMETHOD.
ENDCLASS.

