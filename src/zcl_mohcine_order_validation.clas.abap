CLASS zcl_mohcine_order_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS is_order_valid
  IMPORTING
    quantity TYPE i
    price    TYPE i
  RETURNING VALUE(is_valid) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_order_validation IMPLEMENTATION.
METHOD is_order_valid.

  IF quantity > 0 AND price >= 0.
    is_valid = abap_true.
  ELSE.
    is_valid = abap_false.
  ENDIF.

ENDMETHOD.
ENDCLASS.
