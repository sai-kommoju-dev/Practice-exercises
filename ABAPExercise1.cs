CLASS znewsyntaxprac DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS znewsyntaxprac IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
types: begin of ty_res,
       empid type zempid,
       ename type char40,
       benefit type char40,
       status type char20,
       end of ty_res.
 data: lt_emp type table of zemployeetab,
       lt_result type table of ty_res,
       lt_empb type table of zempbenefits.

 types: begin of ty_i,
        col1 type i,
        col2 type i,
        col3 type i,
        end of ty_i,
        tt_i type standard table of ty_i with EMPTY KEY.

*delete from zemployeetab .
*lt_emp =  VALUE #( ( empid = '10000' ename = 'SAI' department = 'ABAP' dob = '19961214' )
*                   ( empid = '10001' ename = 'John' department = 'SAP' dob = '19801123' ) ).
*INSERT zemployeetab FROM table @lt_emp.
* if sy-subrc EQ 0.
*out->write( 'Employee data is inserted' ).
* endif.

*delete from zempbenefits .
*lt_empb =  VALUE #( ( empid = '10000' benefit = 'Health Insurance' status = 'Active' )
*                   ( empid = '10001' benefit = 'Term Insurance' status = 'Active' ) ).
*INSERT zempbenefits FROM table @lt_empb.
* if sy-subrc EQ 0.
*out->write( 'Employee benefits data is inserted' ).
* endif.

select  from zemployeetab
 fields *
 INTO table @DATA(lt_empt).
 select from zempbenefits
 fields *
 INTO table @data(lt_empbn).
 If sy-subrc EQ 0.
*--Filling third internal table based on two internal tables data
lt_result = value #( for ls_empt IN lt_empt
                      for ls_empbn IN lt_empbn where ( empid = ls_empt-empid )
                           ( empid = ls_empt-empid
                             ename = ls_empt-ename
                             benefit = ls_empbn-benefit
                             status = ls_empbn-status  ) ).

       IF line_exists( lt_result[ 1 ] ) .
        out->write( lt_result[ 1 ] ).
       endif.
endif.

DATA(lt_i) = VALUE tt_i( FOR j = 1 THEN j + 10 UNTIL j > 30
                         ( col1 = j col2 = j + 1 col3 = j + 2  ) ).
           out->write( lt_i[ 1 ] ).
DATA(lv_total) = REDUCE #( init i = 0 for wa IN lt_i
                                     next i = i + wa-col1 ).
          out->write( lv_total ).
  ENDMETHOD.
ENDCLASS.