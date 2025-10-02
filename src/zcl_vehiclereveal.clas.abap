CLASS zcl_vehiclereveal DEFINITION
  PUBLIC
  INHERITING FROM zcl_vehicle
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      METHODS: type REDEFINITION,
               model redefinition.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vehiclereveal IMPLEMENTATION.
  METHOD model.

  ENDMETHOD.

  METHOD type.
      lv_str = 'Car'.
  ENDMETHOD.

ENDCLASS.
