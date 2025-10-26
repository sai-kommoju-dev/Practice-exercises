CLASS zcl_static_inst_constructors DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_static_inst_constructors IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lo_obj1) = NEW zcl_salesprocess1(  ).
    DATA(lo_obj2) = NEW zcl_salesprocess2(  ).
    DATA(lo_obj3) = NEW zcl_salesprocess3(  ).
    DATA(lv_var1) = zcl_salesprocess1=>gv_var1 .
    DATA(lv_var3) = zcl_salesprocess2=>gv_var3 .
    DATA(lv_var5) = zcl_salesprocess3=>gv_var5 .
    DATA(lv_var2) = lo_obj1->gv_var2 .

    DATA(lv_var4) = lo_obj2->gv_var4 .

    DATA(lv_var6) = lo_obj3->gv_var6 .
    out->write( |{ lv_var1 }| ).
    out->write( |{ lv_var3 }| ).
    out->write( |{ lv_var5 }| ).
    out->write( |{ lv_var2 }| ).
    out->write( |{ lv_var2 }| ).
    out->write( |{ lv_var4 }| ).
    out->write( |{ lv_var2 }| ).
    out->write( |{ lv_var4 }| ).
    out->write( |{ lv_var6 }| ).
  ENDMETHOD.

ENDCLASS.
