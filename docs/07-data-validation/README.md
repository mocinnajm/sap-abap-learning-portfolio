# Project 07 — Data Validation

## Objective

Learn how to validate data in ABAP using conditional statements and reusable methods.

## Concepts Learned

- Using `IF`, `ELSE`, and `ENDIF`.
- Validating product quantities.
- Using `abap_true` and `abap_false`.
- Passing input parameters with `IMPORTING`.
- Returning results with `RETURNING`.
- Testing methods from a runner class.

## Class Created

- **Class Name:** `ZCL_MOHCINE_VALIDATION`
- **Description:** `Product Quantity Validation`
- **Method:** `is_quantity_valid`

## Validation Rule

A quantity is valid only when it is greater than zero.

```abap
METHOD is_quantity_valid.

  IF quantity > 0.
    is_valid = abap_true.
  ELSE.
    is_valid = abap_false.
  ENDIF.

ENDMETHOD.
```

## Test Cases

| Quantity | Expected Result | Reason |
|---:|---|---|
| 5 | `abap_true` | Greater than zero |
| 0 | `abap_false` | Not greater than zero |
| -3 | `abap_false` | Less than zero |

## Results

The class was activated successfully, and the validation method was tested using `ZCL_MOHCINE_RUN`.

## Conclusion

This project introduces data validation in ABAP. Conditional statements allow programs to make decisions based on input values, while methods make validation logic reusable and easier to maintain.
