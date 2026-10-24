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
  TYPES: BEGIN OF ty_product,
         name  TYPE string,
         price TYPE i,
       END OF ty_product.
 DATA products TYPE STANDARD TABLE OF ty_product WITH EMPTY KEY.
 DATA total_price TYPE i VALUE 0.
 APPEND VALUE #(
  name  = 'Monitor'
  price = 150
) TO products.
APPEND VALUE #(
  name  = 'Laptop'
  price = 800
) TO products.
LOOP AT products INTO DATA(product).

  out->write(
    |Project 12 - Product: { product-name }, Price: { product-price }|
  ).
  total_price = total_price + product-price.
  out->write( |Project 12 - Total inventory value: { total_price }| ).

ENDLOOP.
out->write( |--- Project 13: Products over 100 ---| ).

LOOP AT products INTO DATA(filtered_product).

  IF filtered_product-price > 100.

    out->write(
      |Product: { filtered_product-name }, Price: { filtered_product-price }|
    ).

  ENDIF.

ENDLOOP.
out->write( |--- Project 13: Search Laptop ---| ).

LOOP AT products INTO DATA(searched_product).

  IF searched_product-name = 'Laptop'.

    out->write(
      |Found product: { searched_product-name }, Price: { searched_product-price }|
    ).

  ENDIF.

ENDLOOP.
out->write( |--- Project 13: Search Tablet ---| ).

DATA found TYPE abap_bool VALUE abap_false.

LOOP AT products INTO DATA(tablet_product).

  IF tablet_product-name = 'Tablet'.

    found = abap_true.

    out->write(
      |Product found: { tablet_product-name }, Price: { tablet_product-price }|
    ).

  ENDIF.

ENDLOOP.

IF found = abap_true.
  out->write( |Search completed successfully.| ).
ELSE.
  out->write( |Product not found: Tablet| ).
ENDIF.



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
DATA(lo_order_validation) = NEW zcl_mohcine_order_validation( ).

DATA(order_valid) = lo_order_validation->is_order_valid(
  quantity = 4
  price    = 0
).

out->write( order_valid ).
DATA(lo_order_service) = NEW zcl_mohcine_order_service( ).

DATA(orderr_valid) = lo_order_service->validate_order(
  quantity = 0
  price    = 100
).
out->write( |Aqui esta la ultima x o el ultimo resultado : { orderr_valid }| ).
DATA(order_zero_price) = lo_order_service->validate_order(
  quantity = 1
  price    = 0
).

out->write(
  |Pedido con precio cero: { order_zero_price }|
).
DATA(lo_order_messages) =
  NEW zcl_mohcine_order_messages( ).

DATA order_is_valid TYPE abap_bool.
DATA order_message TYPE string.

lo_order_messages->validate_order(
  EXPORTING
    quantity = 5
    price    = 100
  IMPORTING
    is_valid = order_is_valid
    message  = order_message
).

out->write( |Valid: { order_is_valid }| ).
out->write( |Message: { order_message }| ).

ENDMETHOD.
ENDCLASS.
