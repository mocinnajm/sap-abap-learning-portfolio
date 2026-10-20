
# Project 02 — ABAP Order Calculator

## Overview

This project calculates the total price of an order using a unit price and a quantity.

## Learning objectives

- Declare variables using `DATA`.
- Use the integer type `TYPE i`.
- Perform arithmetic operations.
- Define a method with a returning parameter.
- Create an object and call its method from an executable ABAP class.

## Calculation

The total price is calculated by multiplying the unit price by the quantity.

```abap
total = price * quantity.
```

## Test cases

| Unit price | Quantity | Expected total |
|---:|---:|---:|
| 25 | 2 | 50 |
| 30 | 3 | 90 |

Both test cases were executed successfully.

## ABAP classes

- `ZCL_MOHCINE_ORDER_CALC`: calculates the order total.
- `ZCL_MOHCINE_RUN`: executes the example and displays the results.

## Tools

- SAP BTP ABAP Environment trial
- Eclipse with ABAP Development Tools (ADT)
- abapGit

## Status

Completed and tested.

## Next project

Project 03 — Conditional statements (`IF`): checking whether an order qualifies for a discount.
