# Project 14 – Sorting Internal Tables

## Overview

This project focuses on sorting internal tables in ABAP using the `SORT` statement.

The goal is to understand how to organize table records using ascending and descending order, and how to combine multiple sorting criteria.

## Learning Objectives

- Sort internal tables by numeric fields.
- Sort records in ascending and descending order.
- Sort records alphabetically.
- Combine multiple sorting criteria.
- Understand primary and secondary sorting fields.

## 1. Sorting by Price in Ascending Order

```abap
SORT products BY price ASCENDING.
```

This sorts products from the lowest price to the highest price.

## 2. Sorting by Price in Descending Order

```abap
SORT products BY price DESCENDING.
```

This sorts products from the highest price to the lowest price.

## 3. Sorting by Name

```abap
SORT products BY name ASCENDING.
```

This sorts product names alphabetically, from A to Z.

## 4. Sorting by Multiple Fields

```abap
SORT products BY price ASCENDING name ASCENDING.
```

This statement uses two sorting criteria:

1. First, products are sorted by price in ascending order.
2. If two products have the same price, their names are sorted alphabetically.

The sorting fields are evaluated in the order in which they appear.

## 5. Combining Different Sorting Directions

```abap
SORT products BY price DESCENDING name ASCENDING.
```

This sorts products by price from highest to lowest. When two products have the same price, their names are sorted alphabetically.

## Key Concepts

| Statement | Description |
|---|---|
| `ASCENDING` | Sorts from lowest to highest or A to Z. |
| `DESCENDING` | Sorts from highest to lowest or Z to A. |
| `SORT ... BY` | Sorts an internal table using one or more fields. |
| Multiple fields | Uses secondary fields to resolve ties. |

## Important Notes

- The `SORT` statement changes the order of records in the original internal table.
- It does not change the values stored in the records.
- The first sorting field has priority.
- Additional fields are used when previous sorting fields have equal values.

## Conclusion

In this project, I learned how to sort ABAP internal tables using numeric and text fields, apply ascending and descending order, and combine multiple sorting criteria.

These concepts are important when processing and organizing data in ABAP applications.
