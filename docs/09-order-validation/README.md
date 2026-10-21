# Project 09 — Order Validation Rules

## Objective

Learn how to validate an order by combining multiple conditions using the `AND` operator in ABAP.

## Concepts Learned

- Combining conditions with `AND`.
- Using `IF`, `ELSE`, and `ENDIF`.
- Validating product quantities and prices.
- Using `abap_true` and `abap_false`.
- Defining methods with multiple input parameters.
- Returning Boolean results with `RETURNING`.
- Testing validation logic from a runner class.

## Class Created

- **Class Name:** `ZCL_MOHCINE_ORDER_VALIDATION`
- **Description:** `Order Validation Rules`
- **Method:** `is_order_valid`

## Validation Rules

An order is valid only when:

- The quantity is greater than zero.
- The price is greater than or equal to zero.

Both conditions must be true.

```abap id="w8pl4z"
IF quantity > 0 AND price >= 0.
  is_valid = abap_true.
ELSE.
  is_valid = abap_false.
ENDIF.
```

## Test Cases

| Quantity | Price | Expected Result | Explanation |
|---:|---:|---|---|
| 4 | 0 | `abap_true` | Both conditions are satisfied |
| 4 | -5 | `abap_false` | The price is negative |
| 0 | 100 | `abap_false` | The quantity is not positive |
| 3 | 50 | `abap_true` | Both conditions are satisfied |

## Results

The class was activated and tested using `ZCL_MOHCINE_RUN`.

The tests demonstrated that the method accepts orders only when both validation rules are satisfied.

## Conclusion

This project introduces combined conditional validation in ABAP. The `AND` operator makes it possible to enforce multiple business rules before accepting an order.
