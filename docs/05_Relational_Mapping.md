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