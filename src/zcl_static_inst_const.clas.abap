CLASS zcl_static_inst_const DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_static_inst_const IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data lo_obj1 TYPE REF TO zcl_salesprocess1.
  lo_obj1 = NEW #(  ).
    DATA(lv_var1) = zcl_salesprocess1=>gv_var1 .
    DATA(lv_var2) = lo_obj1->gv_var2 .
    out->write( |{ lv_var1 }| ).
    out->write( |{ lv_var2 }| ).
  ENDMETHOD.
ENDCLASS.
