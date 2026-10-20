CLASS zcl_mohcine_order_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS calculate_total
    RETURNING VALUE(total) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_order_calc IMPLEMENTATION.
    METHOD calculate_total.
      DATA price TYPE i.
      DATA quantity TYPE i.
          price = 225.
          quantity = 5.
          total = price * quantity.


    ENDMETHOD.
ENDCLASS.
