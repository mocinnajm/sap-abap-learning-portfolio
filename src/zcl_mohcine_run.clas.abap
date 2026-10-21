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
  DATA(lo_products) = NEW zcl_mohcine_product_list( ).

DATA(ls_product) = lo_products->get_product( ).
DATA(lt_products) = lo_products->get_products( ).
DATA(total_value) = 0.
DATA(total_filtered) = 0.

LOOP AT lt_products INTO DATA(ls_product_item).
total_value = total_value
  + ( ls_product_item-price * ls_product_item-quantity ).

   IF ls_product_item-price > 100.
   total_filtered = total_filtered
  + ( ls_product_item-price * ls_product_item-quantity ).
    out->write( ls_product_item-name ).
    out->write( ls_product_item-price ).
    out->write( ls_product_item-quantity ).

  ENDIF.

ENDLOOP.
out->write( total_value ).
out->write( |Valor de productos caros: { total_filtered }| ).


DATA(loo_calculator) = NEW zcl_mohcine_calculator( ).

DATA(total) = loo_calculator->calculate_total(
  price    = 150
  quantity = 4
).

out->write( |El precio total de los productos es : { total }| ).
DATA(lo_validation) = NEW zcl_mohcine_validation( ).

DATA(is_valid) = lo_validation->is_quantity_valid(
  quantity = 5

).

out->write( is_valid ).
DATA(lo_price_validation) = NEW zcl_mohcine_price_validation( ).

DATA(price_valid) = lo_price_validation->is_price_valid(
  price = 0
).

out->write( price_valid ).


ENDMETHOD.
ENDCLASS.
