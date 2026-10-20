# Project 05 — Product Processing

## Overview

This project demonstrates how to filter products by price and calculate the total inventory value of selected products using ABAP.

## Learning objectives

- Use `LOOP AT` to iterate over an internal table.
- Use `IF` to filter products according to a condition.
- Access structure fields such as product name, price, and quantity.
- Calculate product value using price multiplied by quantity.
- Accumulate values in a variable.
- Display results using `out->write` and string templates.

## Filtering condition

```abap
IF ls_product_item-price > 100.
```

Only products with a price strictly greater than 100 are processed.

## Example products

| Product | Price | Quantity | Selected? |
|---|---:|---:|---|
| Teclado | 25 | 2 | No |
| Ratón | 15 | 3 | No |
| Monitor | 150 | 1 | Yes |
| Laptop | 800 | 10 | Yes |

## Calculation

The selected inventory value is calculated as follows:

- Monitor: 150 × 1 = 150
- Laptop: 800 × 10 = 8,000
- **Total filtered value: 8,150**

## Key concepts

- `LOOP AT`
- `IF ... ENDIF`
- `ENDLOOP`
- Arithmetic expressions
- Accumulators
- String templates

## Status

Completed.

## Next project

Project 06 — Reusable Methods and Parameters.
