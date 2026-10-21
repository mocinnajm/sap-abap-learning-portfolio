CLASS zcl_mohcine_price_validation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
  METHODS is_price_valid
  IMPORTING
    price TYPE i
  RETURNING VALUE(is_valid) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_price_validation IMPLEMENTATION.
METHOD is_price_valid.

  IF price >= 0.
     is_valid = abap_true.
  ELSE.
     is_valid = abap_false.
  ENDIF.

ENDMETHOD.
ENDCLASS.
