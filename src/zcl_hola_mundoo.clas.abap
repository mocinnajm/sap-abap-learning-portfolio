
CLASS zcl_hola_mundoo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS say_hello
    RETURNING VALUE(message) TYPE string.


    METHODS get_age
    RETURNING VALUE(age) TYPE i.
ENDCLASS.

CLASS zcl_hola_mundoo IMPLEMENTATION.

  METHOD say_hello.
    message = 'Hola mundo'.
  ENDMETHOD.

  METHOD get_age.
    age = 38.
  ENDMETHOD.

ENDCLASS.
