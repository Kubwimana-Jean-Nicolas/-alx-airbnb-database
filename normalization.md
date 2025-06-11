# Normalization Explanation (Up to 3NF)

## Overview

The database design for the Airbnb clone has been normalized up to the **Third Normal Form (3NF)** to eliminate redundancy, ensure data consistency, and improve scalability.

---

## First Normal Form (1NF)

**Objective:** Eliminate repeating groups and ensure each field contains only atomic values.

### Example:
- Properties are listed in a separate table.
- Each attribute (e.g., location, price) holds only one value.
- All tables have primary keys.

✅ Achieved by:
- Creating individual tables for `User`, `Property`, `Booking`, etc.
- Using separate rows for each booking instead of storing multiple dates in one column.

---

## Second Normal Form (2NF)

**Objective:** Remove partial dependencies (every non-key attribute should depend on the whole primary key).

### Example:
- `Booking` has a single-column primary key `id`.
- All non-key fields (like `start_date`, `end_date`, etc.) depend fully on `id`.

✅ Achieved by:
- Avoiding composite keys.
- Ensuring all non-key attributes relate only to the primary key in their table.

---

## Third Normal Form (3NF)

**Objective:** Remove transitive dependencies (non-key attributes should not depend on other non-key attributes).

### Example:
- `User.email` does not determine `User.full_name` or vice versa.
- `Payment.booking_id` determines everything related to that payment, but no indirect dependencies exist.

✅ Achieved by:
- Separating `Payment`, `Review`, and `Message` from the `Booking` or `User` tables.
- Each table contains only data related to a single entity.

---

## Result

The design eliminates data redundancy, supports efficient queries, and upholds referential integrity between entities.

All entities are in 3NF and prepared for implementation in the `schema.sql` file.

