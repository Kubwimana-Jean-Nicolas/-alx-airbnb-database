
# ERD Requirements for Airbnb Clone Database

## Overview
This Entity-Relationship Diagram (ERD) models the core database design for an Airbnb-like application. The goal is to create a normalized, scalable, and efficient relational structure to handle users, properties, bookings, payments, reviews, and messages.

## Entities and Attributes

### 1. User
- id (PK)
- full_name
- email (UNIQUE)
- password
- phone_number
- created_at
- updated_at

### 2. Property
- id (PK)
- owner_id (FK → User.id)
- title
- description
- location
- price_per_night
- created_at
- updated_at

### 3. Booking
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- start_date
- end_date
- total_price
- status (ENUM: pending, confirmed, cancelled)
- created_at

### 4. Payment
- id (PK)
- booking_id (FK → Booking.id)
- payment_method (ENUM: credit_card, mobile_money, PayPal)
- amount
- paid_at

### 5. Review
- id (PK)
- booking_id (FK → Booking.id)
- user_id (FK → User.id)
- rating (1–5)
- comment
- created_at

### 6. Message
- id (PK)
- sender_id (FK → User.id)
- receiver_id (FK → User.id)
- content
- sent_at

## Relationships

- One `User` can own many `Properties`
- One `User` can book many `Properties` (through `Booking`)
- One `Booking` belongs to one `User` and one `Property`
- One `Booking` can have one `Payment` and one `Review`
- One `User` can send and receive many `Messages`

## Diagram Files

- **airbnb_erd.drawio**: Editable diagram file created in Draw.io
- **airbnb_erd.png**: Exported image version of the ERD
