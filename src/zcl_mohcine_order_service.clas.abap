CLASS zcl_mohcine_order_service DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS validate_order
  IMPORTING
    quantity TYPE i
    price    TYPE i
  RETURNING VALUE(is_valid) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_order_service IMPLEMENTATION.
METHOD validate_order.

  DATA(lo_quantity_validation) =
    NEW zcl_mohcine_validation( ).

  DATA(lo_price_validation) =
    NEW zcl_mohcine_price_validation( ).

  DATA(quantity_valid) =
    lo_quantity_validation->is_quantity_valid(
      quantity = quantity
    ).

  DATA(price_valid) =
    lo_price_validation->is_price_valid(
      price = price
    ).


  IF quantity_valid = abap_true
     AND price_valid = abap_true.
    is_valid = abap_true.
  ELSE.
    is_valid = abap_false.
  ENDIF.

ENDMETHOD.
ENDCLASS.
