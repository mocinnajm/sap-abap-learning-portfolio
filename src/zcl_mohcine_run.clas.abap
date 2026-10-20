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

  out->write( lo_hello->say_hello( ) ).

  out->write( lo_hello->get_age( ) ).

  out->write( lo_calculator->calculate_total( ) ).

ENDMETHOD.
ENDCLASS.
