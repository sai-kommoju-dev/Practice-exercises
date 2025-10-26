CLASS zcl_salesprocess3 DEFINITION
  PUBLIC
  INHERITING FROM zcl_salesprocess2
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA gv_var5 TYPE string.
    DATA gv_var6 TYPE string.
    CLASS-METHODS class_constructor.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_salesprocess3 IMPLEMENTATION.


  METHOD class_constructor.
    gv_var5 = 'Static Constructor of 2nd subclass called - PGI completed'.
  ENDMETHOD.

  METHOD constructor.
  super->constructor( ).
    gv_var6 = 'Instance Constructor of 2nd subclass called Payment received - ACC Posted in SAP'.
  ENDMETHOD.

ENDCLASS.
