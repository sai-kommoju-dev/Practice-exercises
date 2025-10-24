CLASS zcl_supermarket DEFINITION
  PUBLIC
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS: pick_items EXPORTING lv_pick TYPE string,
      billing EXPORTING lv_bill TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_supermarket IMPLEMENTATION.

  METHOD pick_items.
    lv_pick = 'Items are picked'.
  ENDMETHOD.

  METHOD billing.
    lv_bill = 'Picked items are billed'.
  ENDMETHOD.


ENDCLASS.
