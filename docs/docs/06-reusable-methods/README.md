# Project 06 — Reusable Methods and Parameters

## Overview

This project demonstrates how to create reusable ABAP methods that receive input parameters and return calculated results.

## Learning objectives

- Declare methods in the public section of a class.
- Use `IMPORTING` to receive input parameters.
- Use `RETURNING` to return a result.
- Implement arithmetic operations inside a method.
- Call a method using an object.
- Reuse the same method with different input values.

## Class information

- **Class:** `ZCL_MOHCINE_CALCULATOR`
- **Description:** Reusable Calculator with Parameters
- **Method:** `calculate_total`

## Method declaration

```abap
METHODS calculate_total
  IMPORTING
    price    TYPE i
    quantity TYPE i
  RETURNING VALUE(total) TYPE i.
```

## Implementation

```abap
METHOD calculate_total.
  total = price * quantity.
ENDMETHOD.
```

## Test cases

| Price | Quantity | Expected total |
|---:|---:|---:|
| 25 | 4 | 100 |
| 150 | 3 | 450 |
| 800 | 10 | 8000 |

## Key concepts

- Method definition and implementation
- `IMPORTING`
- `RETURNING`
- Object creation with `NEW`
- Method calls using `->`
- Code reuse

## Status

Completed.

## Next project

Project 07 — Data Validation.
