CLASS zcl_mohcine_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS is_quantity_valid
  IMPORTING
    quantity TYPE i
  RETURNING VALUE(is_valid) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_validation IMPLEMENTATION.
METHOD is_quantity_valid.

  IF quantity > 0.
    is_valid = abap_true.
  ELSE.
    is_valid = abap_false.
  ENDIF.

ENDMETHOD.
ENDCLASS.
