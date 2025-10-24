CLASS zcl_storeabc DEFINITION
  PUBLIC
  INHERITING FROM zcl_supermarket
  CREATE PUBLIC .

  PUBLIC SECTION.
    methods billing redefinition.
    METHODS: store_timings EXPORTING lv_time TYPE string,
      security_check EXPORTING lv_itemchec TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_storeabc IMPLEMENTATION.


  METHOD store_timings.
    lv_time = 'Store timings are from 9 AM to 10 PM IST '.

  ENDMETHOD.

  METHOD security_check.
    lv_itemchec = 'Security check is done for the billed items'.
  ENDMETHOD.

  METHOD billing.
   lv_bill = 'Billing is done at counter 5'.
  ENDMETHOD.

ENDCLASS.
