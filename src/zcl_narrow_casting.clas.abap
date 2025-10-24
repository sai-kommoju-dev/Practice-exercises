************************************************************************************
*--Narrow Casting or Upcasting:
*Whenever Subclass Instance is assigned to Superclass instance.Then it is called
*as Narrow Casting or Upcasting
*Here we are going from more specific views(child) to less specific view(parent)
*Narrow casting can be performed with the help of simple assignment operator(=)

*--Wide Casting or Downcasting:
*Whenever Superclass Instance is assigned to Subclass instance.Then it is called
*as Wide Casting or Downcasting
*Here we are going from less specific view(parent) to more specific view(child)
*Wide casting can be performed with the help of conversion operator(?=)

*************************************************************************************

CLASS zcl_narrow_casting DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_narrow_casting IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA lo_supmarket TYPE REF TO ZCL_supermarket.
    " DATA(lo_supmarket) = NEW zcl_supermarket( ).
    DATA(lo_storeabc) = NEW zcl_storeabc( ).
    "Narrow Casting or Upcasting
    lo_supmarket = lo_storeabc.
    CALL METHOD lo_supmarket->pick_items
      IMPORTING
        lv_pick = DATA(lv_pick).
    CALL METHOD lo_supmarket->billing
      IMPORTING
        lv_bill = DATA(lv_bill).
    CALL METHOD lo_storeabc->security_check
      IMPORTING
        lv_itemchec = DATA(lv_itemcheck).
    CALL METHOD lo_storeabc->store_timings
      IMPORTING
        lv_time = DATA(lv_storetime).
    CALL METHOD lo_storeabc->billing
               IMPORTING lv_bill = DATA(lv_storebillc).
    out->write( |Narrow Casting or Upcasting Results: | ).
    out->write( |Items Picked: { lv_pick } | ).
    out->write( |Total Bill Amount: { lv_bill } | ).
    out->write( |Security Check Items: { lv_itemcheck } | ).
    out->write( |Store Timings: { lv_storetime } | ).
    out->write( |Store ABC Billing Amount: { lv_storebillc } | ).

  ENDMETHOD.

ENDCLASS.
