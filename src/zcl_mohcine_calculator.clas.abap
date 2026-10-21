CLASS zcl_mohcine_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS calculate_total
  IMPORTING
    price    TYPE i
    quantity TYPE i
  RETURNING VALUE(total) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_calculator IMPLEMENTATION.
METHOD calculate_total.

  total = price * quantity.

ENDMETHOD.
ENDCLASS.
