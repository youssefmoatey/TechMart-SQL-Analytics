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

# Step 3 — Resolving the Many-to-Many Relationship

One of the most important transformations during the relational mapping process is resolving **Many-to-Many (M:N)** relationships.

Unlike conceptual models, relational databases cannot directly represent a many-to-many relationship. Therefore, an intermediate relation, known as an **Associative Entity** (or Junction Table), must be introduced.

In the TechMart system, the relationship between **Order** and **Product** is a many-to-many relationship.

---

## Order ↔ Product

### Business Rule

An order can contain multiple products, and the same product can appear in multiple orders.

This relationship cannot be implemented directly in a relational database.

### Mapping Decision

To resolve this relationship, a new relation named **OrderDetails** was created.

The relation contains the primary keys of both participating entities as foreign keys. Together, these two foreign keys form a **Composite Primary Key**, ensuring that the same product cannot appear more than once within the same order.

In addition to the foreign keys, the relation stores transactional attributes that belong specifically to each order item.

---

### OrderDetails Relation

```text
OrderDetails
-----------------------------
OrderID      (PK) (FK)
ProductID    (PK) (FK)
Quantity
UnitPrice
Discount

```

Why was OrderDetails introduced?

The OrderDetails relation serves two important purposes.

First, it resolves the many-to-many relationship between orders and products.

Second, it stores information that belongs to each purchased product rather than to the order itself.

For example:

- Quantity purchased
- Product price at the time of purchase
- Discount applied to that specific product

These attributes cannot be stored in either the Order table or the Product table because they describe the relationship itself rather than either participating entity.

### Design Consideration

The product price is intentionally stored inside the OrderDetails relation instead of referencing the current product price.

This preserves the historical accuracy of completed orders.

For example, if the price of a product changes in the future, previous orders will continue to display the original purchase price recorded at the time of the transaction.

---

# Step 4 — Final Relational Schema

After completing the relational mapping process, the following relations represent the final logical database schema for the TechMart Sales Management System.

Each relation includes its attributes, primary key(s), and foreign key(s), and will be used directly during the SQL implementation phase.

---

---

## Customer

```text
Customer
-------------------------
CustomerID (PK)
FirstName
LastName
CustomerPhoneNum
CustomerEmail
CustomerAddress
```

---

## Category

```text
Category
-------------------------
CategoryID (PK)
CategoryName
```

---

## Supplier

```text
Supplier
-------------------------
SupplierID (PK)
CompanyName
PhoneNumber
Email
Address
```

---

## Product

```text
Product
-------------------------
ProductID (PK)
CategoryID (FK)
SupplierID (FK)
ProductName
ProductDescription
ProductPrice
ProductStock
```

---

## Branch

```text
Branch
-------------------------
BranchID (PK)
BranchName
City
Address
Phone
```

---

## Employee

```text
Employee
-------------------------
EmployeeID (PK)
BranchID (FK)
FirstName
LastName
JobTitle
HiringDate
Salary
IsManager
```

---

## Order

```text
Order
-------------------------
OrderID (PK)
CustomerID (FK)
EmployeeID (FK)
OrderDate
OrderStatus
```

---

## Payment

```text
Payment
-------------------------
PaymentID (PK)
OrderID (FK)
PaymentAmount
PaymentDate
PaymentMethod
```

---

## OrderDetails

```text
OrderDetails
-------------------------
OrderID (PK) (FK)
ProductID (PK) (FK)
Quantity
UnitPrice
Discount
```
