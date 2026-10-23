# Project 10 — Order Validation Service

## Overview

This project demonstrates how to build a reusable order validation service in SAP ABAP by combining existing validation classes.

Instead of duplicating validation logic, the service delegates quantity and price checks to their respective classes and combines their results to determine whether an order is valid.

## Learning Objectives

- Understand how to create and reuse class instances with `NEW`.
- Call methods on objects using the `->` operator.
- Pass input parameters to methods using `IMPORTING`.
- Receive method results using `RETURNING`.
- Combine Boolean conditions using `AND`.
- Separate validation responsibilities across multiple classes.

## Classes Used

| Class | Responsibility |
|---|---|
| `ZCL_MOHCINE_VALIDATION` | Validates product quantity. |
| `ZCL_MOHCINE_PRICE_VALIDATION` | Validates product price. |
| `ZCL_MOHCINE_ORDER_SERVICE` | Coordinates quantity and price validation. |
| `ZCL_MOHCINE_RUN` | Executes the learning exercises and displays their results. |

## Validation Rules

An order is valid when both conditions are satisfied:

1. Quantity must be greater than zero (`quantity > 0`).
2. Price must be greater than or equal to zero (`price >= 0`).

The service combines the results using the `AND` operator. If either validation fails, the order is considered invalid.

## Implementation

The `validate_order` method creates instances of the existing validation classes, calls their validation methods, and combines the returned Boolean values.

```abap
METHOD validate_order.

  DATA(lo_quantity_validation) =
    NEW zcl_mohcine_validation( ).

  DATA(lo_price_validation) =
    NEW zcl_mohcine_price_validation( ).

  DATA(quantity_valid) =
    lo_quantity_validation->is_quantity_valid(
      quantity = quantity
    ).

  DATA(price_valid) =
    lo_price_validation->is_price_valid(
      price = price
    ).

  IF quantity_valid = abap_true
     AND price_valid = abap_true.
    is_valid = abap_true.
  ELSE.
    is_valid = abap_false.
  ENDIF.

ENDMETHOD.
```

## Test Cases

| Quantity | Price | Expected result | Reason |
|---:|---:|---|---|
| 5 | 100 | Valid (`X`) | Both values satisfy the rules. |
| 0 | 100 | Invalid (blank) | Quantity must be greater than zero. |
| 5 | -10 | Invalid (blank) | Price cannot be negative. |
| 1 | 0 | Valid (`X`) | Zero is an allowed price. |

## Key Concepts Learned

- **Object creation:** `NEW` creates an instance of a class.
- **Method calls:** `->` accesses an object's methods.
- **Method parameters:** `IMPORTING` passes input values to a method.
- **Return values:** `RETURNING` provides the result to the calling code.
- **Boolean logic:** `AND` requires both conditions to be true.
- **Code reuse:** Existing validation classes can be combined without duplicating their rules.
- **Separation of responsibilities:** Each class has a specific role.

## Conclusion

This project reinforces object-oriented programming principles in ABAP, particularly code reuse, method calls, Boolean validation, and separation of responsibilities.

It is part of my ongoing SAP ABAP learning portfolio and provides a foundation for more advanced validation and business logic exercises.
