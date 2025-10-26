CLASS zcl_salesprocess2 DEFINITION
  PUBLIC
  INHERITING FROM zcl_salesprocess1
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA gv_var3 TYPE string.
    DATA gv_var4 TYPE string.
    CLASS-METHODS class_constructor.
    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_salesprocess2 IMPLEMENTATION.
  METHOD class_constructor.
   gv_var3 = 'Static Constructor of first subclass called Delivery is created'.
  ENDMETHOD.


  METHOD constructor.
   super->constructor( ).
  gv_var4 = 'Instance Constructor of first subclass called Accounting doc is created'.
  ENDMETHOD.



ENDCLASS.
