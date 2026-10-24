# Project 13 — Filtering and Searching Internal Tables

## Objective

Learn how to filter records in an internal table, search for a specific product, and handle cases where no matching product is found.

## Concepts Covered

- Filtering internal table rows with `IF`.
- Comparing numeric values using `>` and `>=`.
- Searching for a product by name using `=`.
- Iterating through an internal table with `LOOP AT`.
- Using a Boolean variable of type `abap_bool` to track search results.
- Handling unsuccessful searches with `IF`, `ELSE`, and `ENDIF`.

## Filtering Products by Price

The program iterates through the product table and displays only products whose price is greater than 100.

```abap
LOOP AT products INTO DATA(filtered_product).

  IF filtered_product-price > 100.
    out->write(
      |Product: { filtered_product-name }, Price: { filtered_product-price }|
    ).
  ENDIF.

ENDLOOP.
```

The filter does not delete products from the internal table. It only controls which products are displayed.

## Searching for a Product

The program searches for a product named `Laptop`.

```abap
LOOP AT products INTO DATA(searched_product).

  IF searched_product-name = 'Laptop'.
    out->write(
      |Found product: { searched_product-name }, Price: { searched_product-price }|
    ).
  ENDIF.

ENDLOOP.
```

## Handling Products That Are Not Found

A Boolean variable records whether the product was found.

```abap
DATA found TYPE abap_bool VALUE abap_false.
```

When the product is found, the variable is updated to `abap_true`. After the loop, the program checks the result and displays an appropriate message.

```abap
IF found = abap_true.
  out->write( |Search completed successfully.| ).
ELSE.
  out->write( |Product not found: Tablet| ).
ENDIF.
```

## Example Output

```text
--- Project 13: Products over 100 ---
Product: Monitor, Price: 150
Product: Laptop, Price: 800

--- Project 13: Search Laptop ---
Found product: Laptop, Price: 800

--- Project 13: Search Tablet ---
Product not found: Tablet
```

## Key Takeaways

- `LOOP AT` iterates over the rows of an internal table.
- `IF` evaluates a condition for each row.
- `>` means greater than, while `>=` means greater than or equal to.
- `=` compares values for equality.
- `abap_true` and `abap_false` represent Boolean states.
- `ELSE` provides an alternative branch when a condition is false.
- Filtering and searching do not automatically modify or delete table records.

## Project Status

Completed — filtering, searching, and handling unsuccessful searches in ABAP internal tables.
