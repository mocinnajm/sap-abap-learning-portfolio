# Project 08 — Product Price Validation

## Objective

Learn how to validate product prices using conditional statements and reusable methods in ABAP.

## Concepts Learned

- Using `IF`, `ELSE`, and `ENDIF`.
- Using the `>=` operator (greater than or equal to).
- Validating positive, zero, and negative prices.
- Returning Boolean results with `abap_true` and `abap_false`.
- Creating and calling reusable methods.
- Testing a validation method from a runner class.

## Class Created

- **Class Name:** `ZCL_MOHCINE_PRICE_VALIDATION`
- **Description:** `Product Price Validation`
- **Method:** `is_price_valid`

## Validation Rule

A product price is valid when it is greater than or equal to zero.

```abap
IF price >= 0.
  is_valid = abap_true.
ELSE.
  is_valid = abap_false.
ENDIF.
```

## Test Cases

| Price | Expected Result | Explanation |
|---:|---|---|
| 100 | `abap_true` | The price is positive |
| 0 | `abap_true` | Zero is accepted |
| -10 | `abap_false` | Negative prices are rejected |

## Results

The class was activated successfully and tested from `ZCL_MOHCINE_RUN`.

The tests confirmed that zero and positive prices are accepted, while negative prices are rejected without causing a syntax error.

## Conclusion

This project reinforces conditional statements, Boolean return values, and reusable validation methods in ABAP. These techniques help developers check input data before using it in business logic.
