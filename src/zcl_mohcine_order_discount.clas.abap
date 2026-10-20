CLASS zcl_mohcine_order_discount DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS check_discount
  IMPORTING VALUE(order_total) TYPE i
  RETURNING VALUE(has_discount) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_order_discount IMPLEMENTATION.

METHOD check_discount.
IF order_total >= 100.
  has_discount = abap_true.
ELSE.
  has_discount = abap_false.
ENDIF.

ENDMETHOD.

ENDCLASS.
