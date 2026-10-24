# Project 12 — Internal Tables in ABAP

## 1. Overview

This project introduces internal tables in ABAP. An internal table stores multiple records in memory while a program is running.

The goal is to define a product structure, store several products in an internal table, iterate through the records, and calculate their total value.

## 2. Learning Objectives

- Define a custom structure using `TYPES`.
- Declare an internal table using `DATA`.
- Add records using `APPEND VALUE`.
- Iterate through records using `LOOP AT`.
- Access structure components.
- Calculate a total using an accumulator.

## 3. Product Structure

Each product contains two fields: a name and a price.

```abap
TYPES: BEGIN OF ty_product,
         name  TYPE string,
         price TYPE i,
       END OF ty_product.
```

`ty_product` defines the structure of one product record. The `name` field stores text, and `price` stores an integer for this learning exercise.

## 4. Internal Table Declaration

```abap
DATA products TYPE STANDARD TABLE OF ty_product WITH EMPTY KEY.
```

The `products` internal table can contain multiple records with the structure defined by `ty_product`.

`WITH EMPTY KEY` specifies that no explicit table key fields are defined for this example.

## 5. Adding Products

```abap
APPEND VALUE #(
  name  = 'Monitor'
  price = 150
) TO products.

APPEND VALUE #(
  name  = 'Laptop'
  price = 800
) TO products.

APPEND VALUE #(
  name  = 'Keyboard'
  price = 25
) TO products.
```

Each `APPEND` statement adds a new product record to the internal table.

## 6. Iterating and Calculating the Total

The following code iterates through the table, displays each product, and calculates the total inventory value.

```abap
DATA total_price TYPE i VALUE 0.

LOOP AT products INTO DATA(product).

  out->write(
    |Project 12 - Product: { product-name }, Price: { product-price }|
  ).

  total_price = total_price + product-price.

ENDLOOP.

out->write(
  |Project 12 - Total inventory value: { total_price }|
).
```

The accumulator starts at zero. During each loop iteration, the current product's price is added to `total_price`.

## 7. Expected Output

```text
Project 12 - Product: Monitor, Price: 150
Project 12 - Product: Laptop, Price: 800
Project 12 - Product: Keyboard, Price: 25
Project 12 - Total inventory value: 975
```

## 8. Key Concepts Learned

- `TYPES` defines a reusable data type.
- `DATA` declares a variable or internal table.
- `APPEND VALUE` adds a record to an internal table.
- `LOOP AT` processes table records one by one.
- `INTO DATA(product)` stores the current record in a local variable.
- `product-name` and `product-price` access the current record's fields.
- An accumulator calculates a running total.

## 9. Important Note

Internal tables store data in program memory; they do not automatically save it permanently to a database.

The integer type `i` is used for simplicity in this exercise. Real business applications should use appropriate data types for monetary amounts and handle currencies correctly.

## 10. Conclusion

This project demonstrates how to structure, store, iterate over, and process multiple records using ABAP internal tables. These concepts are useful foundations for more advanced ABAP development and business data processing.
