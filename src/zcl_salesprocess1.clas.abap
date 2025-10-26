CLASS zcl_salesprocess1 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
*--Inside Static constructor, only static attributes are allowed
    CLASS-DATA: gv_var1 TYPE string.
    DATA: gv_var2 TYPE string.
*--Static Constructor
*--Static constructor won't allow any paramater
    CLASS-METHODS class_constructor.
*--Instance Constructor
*--Instance constructor allows importing parameters
    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_salesprocess1 IMPLEMENTATION.

  METHOD class_constructor.
    gv_var1 = 'Static Constructor of Parent class called - Sales order creation'.
  ENDMETHOD.

  METHOD constructor.
    gv_var2 = 'Instance Constructor of parent class called Invoice created'.
  ENDMETHOD.



ENDCLASS.
