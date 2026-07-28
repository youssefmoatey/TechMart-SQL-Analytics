# TechMart Database Design Review

## ERD Version
Version: 1.0

---

# Overview

The Conceptual Entity Relationship Diagram (ERD) for the TechMart Retail Management System has been completed and reviewed.

The ERD represents the business requirements gathered during the system analysis phase before database implementation.

---

# Entities

The system consists of seven main entities:

- Customer
- Order
- Product
- Category
- Supplier
- Employee
- Branch
- Payment

---

# Relationships

| Relationship | Cardinality |
|-------------|-------------|
| Customer Places Order | 1 : M |
| Order Contains Product | M : M |
| Category Has Product | 1 : M |
| Supplier Supplies Product | 1 : M |
| Employee Processes Order | 1 : M |
| Order Pays Payment | 1 : 1 |
| Branch Employs Employee | 1 : M |

---

# Participation Constraints

| Relationship | Participation |
|-------------|---------------|
| Customer → Order | Partial / Total |
| Category → Product | Partial / Total |
| Supplier → Product | Partial / Total |
| Employee → Order | Partial / Total |
| Branch → Employee | Partial / Total |
| Order → Payment | Partial / Total |
| Order → Product | Total / Total |

---

# Business Rules

- One customer can place multiple orders.
- Each order belongs to exactly one customer.

- One category can contain multiple products.
- Each product belongs to exactly one category.

- One supplier can supply multiple products.
- Each product is supplied by exactly one supplier.

- One employee can process multiple orders.
- Each order must be processed by exactly one employee.

- One branch can employ multiple employees.
- Each employee belongs to exactly one branch.

- One order has exactly one payment.
- One payment belongs to exactly one order.

---

# Notes

The relationship between **Order** and **Product** is **Many-to-Many**.

During the Mapping phase, this relationship will be transformed into an associative entity named **OrderDetails**.

---

# Weak Entities

There are no weak entities in the current conceptual ERD.

---

# Status

Conceptual ERD Approved

Ready for Mapping Phase.