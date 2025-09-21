CLASS zcl_practicejoins DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_practicejoins IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*--Types declaration
    TYPES: BEGIN OF ty_result,
             Carrier_ID        TYPE /dmo/carrier-carrier_id,
             carrier_name      TYPE /dmo/carrier-name,
             Connection_ID     TYPE /dmo/connection-connection_id,
             departure_time    TYPE /dmo/connection-departure_time,
             arrival_time      TYPE /dmo/connection-arrival_time,
             airport_from_id   TYPE /dmo/connection-airport_from_id,
             airport_to_id     TYPE /dmo/connection-airport_to_id,
             airport_from_name TYPE /dmo/airport-name,
             airport_to_name    TYPE /dmo/airport-name,
           END OF ty_result,
           tt_result TYPE TABLE OF ty_result WITH EMPTY KEY.

*--Inner Join between Carrier and Connection tables
    SELECT FROM /dmo/carrier AS a
           INNER JOIN /dmo/connection AS b
           ON a~carrier_id = b~carrier_id
           FIELDS
           a~carrier_id AS Carrier_ID,
           a~name AS carrier_name,
           b~connection_id AS Connection_ID,
           b~departure_time,
           b~arrival_time,
           b~airport_from_id,
           b~airport_to_id
           INTO TABLE @DATA(lt_result)
           UP TO 5 ROWS.
    IF sy-subrc = 0.
      LOOP AT lt_result ASSIGNING FIELD-SYMBOL(<fs_result>).
        out->write( |CarrierID { <fs_result>-Carrier_ID } CarrierName { <fs_result>-carrier_name } ConnectionID { <fs_result>-Connection_ID } DepartureTime {  <fs_result>-departure_time } ArrivalTime { <fs_result>-arrival_time } AirportFrom {
<fs_result>-airport_from_id } AirportTo   { <fs_result>-airport_to_id } | ).
      ENDLOOP.
    ENDIF.
*--Fetch Airport Name from /DMO/AIRPORT table using Airport ID from above result
    IF lt_result IS NOT INITIAL.
      SELECT FROM /dmo/airport
           FIELDS airport_id,
                  name
           FOR ALL ENTRIES IN @lt_result
           WHERE airport_id = @lt_result-airport_from_id
               INTO TABLE @DATA(lt_airport).
      IF sy-subrc = 0.
*--Populating Airport from ID , Airport To ID names
        DATA(lt_final) = VALUE tt_result( FOR ls_res IN lt_result
                                          FOR ls_fin IN lt_airport
                                        ( carrier_id   = ls_res-carrier_id
                                          carrier_name = ls_res-carrier_name
                                          connection_id = ls_res-connection_id
                                          departure_time = ls_res-departure_time
                                          arrival_time   = ls_res-arrival_time
                                          airport_from_id = ls_fin-airport_id
                                          airport_from_name = COND #( WHEN ls_res-airport_from_id = ls_fin-airport_id THEN ls_fin-name )
                                          ) ).
  LOOP AT lt_final ASSIGNING FIELD-SYMBOL(<fs_final>).
   out->write( |CarrierID { <fs_final>-Carrier_ID } CarrierName { <fs_final>-carrier_name } ConnectionID { <fs_final>-Connection_ID } DepartureTime { <fs_final>-departure_time } ArrivalTime { <fs_final>-arrival_time } AirportFrom {
   <fs_final>-Airport_from_id } AirportTo { <fs_final>-airport_to_id } AirportFromName { <fs_final>-airport_from_name } | ).
 ENDLOOP.
      ENDIF.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
