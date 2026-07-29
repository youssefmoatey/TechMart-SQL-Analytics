# Relational Mapping

## Introduction

After completing the **Business Requirements**, **System Analysis**, and **Conceptual ERD**, the next phase is transforming the conceptual design into a relational database schema.

Relational Mapping is the process of converting entities, attributes, and relationships into database tables that can be implemented in a Relational Database Management System (RDBMS) such as SQL Server.

The objective of this phase is to preserve all business rules identified during the analysis stage while ensuring:

- Data integrity
- Minimal redundancy
- High maintainability
- Efficient querying
- Compliance with relational database design principles

Instead of simply applying mapping rules mechanically, every design decision in this document is explained based on the business requirements of the **TechMart Sales Management System**.

---

# Mapping Process

The relational schema was created by following a structured sequence of transformations.

The process consists of the following stages:

1. Mapping all strong entities into relations.
2. Reviewing weak entities.
3. Mapping One-to-Many relationships.
4. Resolving Many-to-Many relationships.
5. Producing the final relational schema.

Each stage builds on the previous one to ensure that the final database structure accurately represents the conceptual model while remaining ready for SQL implementation.

---

# Step 1 — Mapping Strong Entities

The first step is identifying all **Strong Entities** from the conceptual ERD.

A strong entity represents a real-world object that can exist independently and possesses its own primary key.

According to the standard mapping rules, every strong entity is transformed into a separate relation (table), and its primary key becomes the primary key of the corresponding relation.

At this stage, relationships are intentionally ignored. The goal is only to establish the initial database structure before introducing foreign keys in the following steps.

The following strong entities were identified in the TechMart system:

- Customer
- Product
- Category
- Supplier
- Employee
- Branch
- Order
- Payment

At the end of this step, each entity exists as an independent relation with its own primary key and attributes.

# Step 2 — Mapping One-to-Many Relationships

After transforming all strong entities into independent relations, the next step is preserving the relationships between them.

The TechMart system contains multiple **One-to-Many (1:M)** relationships. According to the relational mapping rules, the primary key from the **One** side is migrated to the **Many** side as a foreign key.

The placement of each foreign key was determined based on the business requirements defined during the system analysis phase.

---

## Customer → Order

### Business Rule

A customer can place multiple orders, while each order belongs to exactly one customer.

### Mapping Decision

The primary key of the **Customer** relation (`CustomerID`) is migrated into the **Order** relation as a foreign key.

Since an order cannot exist without a customer, the foreign key is defined as **NOT NULL**.

```text
Order
---------
OrderID (PK)
CustomerID (FK) NOT NULL
EmployeeID
OrderDate
OrderStatus
```

---

## Category → Product

### Business Rule

Each category can contain multiple products, while every product must belong to exactly one category.

### Mapping Decision

The primary key of the **Category** relation (`CategoryID`) is migrated into the **Product** relation.

Because every product must belong to a category according to the business requirements, the foreign key is **NOT NULL**.

```text
Product
---------
ProductID (PK)
CategoryID (FK) NOT NULL
ProductName
ProductDescription
ProductPrice
ProductStock
SupplierID
```

---

## Supplier → Product

### Business Rule

A supplier can provide multiple products, while every product in the system must be supplied by exactly one supplier.

### Mapping Decision

The primary key of the **Supplier** relation (`SupplierID`) is migrated into the **Product** relation.

Based on the project requirements, products cannot exist without an assigned supplier. Therefore, the foreign key is defined as **NOT NULL**.

```text
Product
---------
ProductID (PK)
SupplierID (FK) NOT NULL
ProductName
ProductDescription
ProductPrice
ProductStock
CategoryID
```

---

## Branch → Employee

### Business Rule

Each branch can have multiple employees, while every employee works in exactly one branch.

### Mapping Decision

The primary key of the **Branch** relation (`BranchID`) is migrated into the **Employee** relation.

Since every employee must belong to a branch, the foreign key is defined as **NOT NULL**.

```text
Employee
---------
EmployeeID (PK)
BranchID (FK) NOT NULL
FirstName
LastName
JobTitle
HiringDate
Salary
```

---

## Summary

All One-to-Many relationships were successfully transformed by migrating the primary key from the **One** side to the **Many** side as a foreign key.

The nullability of each foreign key was determined according to the participation constraints and business requirements defined during the analysis phase.