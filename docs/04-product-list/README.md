# Project 04 — Product List and Inventory Value

## Overview

An ABAP application that manages a list of products and calculates the total inventory value.

## Learning objectives

- Define structures using `TYPES`.
- Create internal tables.
- Use methods to return product data.
- Iterate through products using `LOOP AT`.
- Access structure components.
- Calculate totals using an accumulator.

## Product structure

Each product contains:
- Name
- Price
- Quantity

## Example inventory

| Product | Price | Quantity | Value |
|---|---:|---:|---:|
| Keyboard | 25 | 2 | 50 |
| Mouse | 15 | 3 | 45 |
| Monitor | 150 | 1 | 150 |
| Laptop | 800 | 1 | 800 |
| **Total** | | | **1,045** |

## Main concepts

- `ty_product`: product structure.
- `tt_products`: internal table type.
- `lt_products`: product list.
- `LOOP AT`: iterates through the list.
- `total_value`: accumulates the inventory value.

## Technologies

- SAP ABAP
- Eclipse ADT
- SAP BTP ABAP Environment

## Status

Completed and tested.

## Next project

Project 05 — Product Processing and Inventory Reports.
