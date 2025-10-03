CLASS zcl_oopsabap1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_oopsabap1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
   data(lo_obj) = NEW zcl_addition( ).
   data(lo_obj1) = NEW zcl_vehiclereveal( ).
   data(lo_obj2) = NEW zcl_vehiclereaveal2(  ).
   data(lo_obj3) = NEW zcl_vehiclereveal3(  ).
  call method lo_obj->get_data
   EXPORTING
    lv_var1 = 1
    lv_var2 = 2
   IMPORTING
    lv_var3 = data(lv_var).
    out->write( |The addition of 1 and 2 is { lv_var }| ).

    call method lo_obj1->type
    IMPORTING
      lv_str = data(lv_typ).
      out->write( |The type of vehicle is { lv_typ }| ).
   call method lo_obj2->type
     IMPORTING
      lv_str = data(lv_typ1).
      out->write( |The type of vehicle is { lv_typ1 }| ).
  call method lo_obj3->type
     IMPORTING
      lv_str = data(lv_typ2).
      out->write( |The type of vehicle is { lv_typ2 }| ).
  ENDMETHOD.

ENDCLASS.
