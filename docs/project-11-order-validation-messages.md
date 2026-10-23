# Project 11 — Order Validation Messages

## Overview

This project extends the previous order validation exercises by returning both a Boolean validation result and a descriptive message.

The goal is to make validation results easier to understand and more useful when diagnosing invalid order data.

## Learning Objectives

- Distinguish between Boolean values and text messages.
- Declare methods with `IMPORTING` and `EXPORTING` parameters.
- Return multiple outputs from a method.
- Use `IF`, `ELSEIF`, and `ELSE` to implement validation rules.
- Create and reuse class instances with `NEW`.
- Call methods using the `->` operator.
- Display validation results using `out->write`.

## Class

`ZCL_MOHCINE_ORDER_MESSAGES`

**Description:** Order Validation Messages

The class validates an order and returns two outputs:

- `is_valid` (`abap_bool`): indicates whether the order is valid.
- `message` (`string`): explains the validation result.

## Validation Rules

1. Quantity must be greater than zero.
2. Price must be greater than or equal to zero.

The method checks the quantity first. If the quantity is invalid, it returns the corresponding message. Otherwise, it checks the price. If both values satisfy the rules, it reports that the order is valid.

## Implementation

```abap
METHOD validate_order.

  IF quantity <= 0.
    is_valid = abap_false.
    message = `Invalid quantity: quantity must be greater than zero.`.

  ELSEIF price < 0.
    is_valid = abap_false.
    message = `Invalid price: price cannot be negative.`.

  ELSE.
    is_valid = abap_true.
    message = `Order is valid.`.
  ENDIF.

ENDMETHOD.
```

## Test Cases

| Quantity | Price | Expected validity | Expected message |
|---:|---:|---|---|
| 5 | 100 | Valid (`X`) | `Order is valid.` |
| 5 | -10 | Invalid (blank) | `Invalid price: price cannot be negative.` |
| 0 | 100 | Invalid (blank) | `Invalid quantity: quantity must be greater than zero.` |

## Key Concepts Learned

- **Boolean values:** `abap_true` represents true and `abap_false` represents false.
- **Text variables:** `string` stores descriptive messages.
- **Input parameters:** `IMPORTING` in the method definition.
- **Output parameters:** `EXPORTING` in the method definition.
- **Conditional logic:** `IF`, `ELSEIF`, and `ELSE` select the appropriate validation branch.
- **Code reuse:** an existing class instance can be used to validate different orders.

## Conclusion

This project demonstrates how to make validation logic more informative by returning both a Boolean result and a descriptive message.

It is part of my ongoing SAP ABAP learning portfolio and builds on the reusable validation service developed in Project 10.
