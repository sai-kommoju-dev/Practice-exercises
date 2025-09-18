CLASS zcl_practicenewsyntax DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_employee,
             id   TYPE i,
             name TYPE string,
             age  TYPE i,
           END OF ty_employee,
           ty_t_employees TYPE STANDARD TABLE OF ty_employee WITH EMPTY KEY.
    TYPES: BEGIN OF ty_range,
             sign   TYPE c LENGTH 1,
             option TYPE c LENGTH 2,
             low    TYPE i,
             high   TYPE i,
           END OF ty_range,
           tt_range TYPE STANDARD TABLE OF ty_range WITH EMPTY KEY.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_practicenewsyntax IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*--Populating internal table with Employee details.
    DATA(lt_employees) = VALUE ty_t_employees( ( id = 1 name = 'Alice'   age = 30 )
                                               ( id = 2 name = 'Bob'     age = 25 )
                                               ( id = 3 name = 'Charlie' age = 35 ) ).
*--Conversion of Internal table into Range table using FOR .
    DATA(lt_range) = VALUE tt_range( FOR ls_emp IN lt_employees
                                   ( sign = 'I' option = 'EQ' low = ls_emp-id ) ).
*--Populating Range table using CORRESPONDING Default.
    DATA(lt_range2) = CORRESPONDING tt_range( lt_employees MAPPING  sign   = DEFAULT 'I'
                                                                    option = DEFAULT 'EQ'
                                                                    low    = id  ).
    out->write(  'Employee Details:' ).
    LOOP AT lt_employees INTO DATA(ls_employee).
      out->write(  |ID: { ls_employee-id }, Name: { ls_employee-name }, Age: { ls_employee-age }| ).
    ENDLOOP.
    out->write(  'Range Table from Internal Table:' ).
    LOOP AT lt_range INTO DATA(ls_range).
      out->write(  |Sign: { ls_range-sign }, Option: { ls_range-option }, Low: { ls_range-low }| ).
    ENDLOOP.
    out->write(  'Range Table using CORRESPONDING:' ).
    LOOP AT lt_range2 INTO DATA(ls_range2).
      out->write(  |Sign: { ls_range2-sign }, Option: { ls_range2-option }, Low: { ls_range2-low }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
