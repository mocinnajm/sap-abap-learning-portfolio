CLASS zcl_mohcine_product_list DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  TYPES: BEGIN OF ty_product,
         name     TYPE string,
         price    TYPE i,
         quantity TYPE i,
       END OF ty_product.
       METHODS get_product
  RETURNING VALUE(product) TYPE ty_product.
  TYPES tt_products TYPE STANDARD TABLE OF ty_product WITH EMPTY KEY.

METHODS get_products
  RETURNING VALUE(products) TYPE tt_products.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mohcine_product_list IMPLEMENTATION.
  METHOD get_product.
  product-name = 'Teclado'.
  product-price = 25.
  product-quantity = 2.
  ENDMETHOD.
  METHOD get_products.

  products = VALUE #(
    ( name = 'Teclado' price = 25 quantity = 2 )
    ( name = 'Ratón'   price = 15 quantity = 3 )
    ( name = 'Monitor' price = 150 quantity = 1 )
    ( name = 'portail' price = 800 quantity = 10 )
  ).


ENDMETHOD.
ENDCLASS.
