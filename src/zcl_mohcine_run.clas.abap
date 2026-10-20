CLASS zcl_mohcine_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_run IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(lo_hello) = NEW zcl_hola_mundoo( ).
  DATA(lo_calculator) = NEW ZCL_MOHCINE_ORDER_CALC(  ).
  DATA(lo_discount) = NEW zcl_mohcine_order_discount(  ).
  DATA(has_discount) = lo_discount->check_discount( order_total = 100 ).

  out->write( lo_hello->say_hello( ) ).

  out->write( lo_hello->get_age( ) ).

  out->write( lo_calculator->calculate_total( ) ).

  out->write( has_discount ).


ENDMETHOD.
ENDCLASS.
