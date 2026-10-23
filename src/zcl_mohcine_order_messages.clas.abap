CLASS zcl_mohcine_order_messages DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS validate_order
    IMPORTING
      quantity TYPE i
      price    TYPE i
    EXPORTING
      is_valid TYPE abap_bool
      message  TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_order_messages IMPLEMENTATION.
METHOD validate_order.

  IF quantity <= 0.
    is_valid = abap_false.
    message = `Invalid quantity: quantity must be greater than zero.`.

  ELSEIF price < 0.
    is_valid = abap_false.
    message = `Invalid price: price cannot be negative.`.

  ELSE.
    is_valid = abap_true.
    message = `Order is valid.`.
  ENDIF.

ENDMETHOD.
ENDCLASS.
