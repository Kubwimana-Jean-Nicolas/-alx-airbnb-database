# Airbnb Clone Database Schema

This schema defines all tables and relationships used in the Airbnb clone database project.

## Tables

### User
Stores user information such as name, email, and password.

### Property
Stores property listings and is linked to a user (owner).

### Booking
Records bookings made by users on properties.

### Payment
Captures payment details for bookings.

### Review
Allows users to leave feedback after bookings.

### Message
Stores private messages sent between users.

## Relationships

- One user can own many properties.
- One user can make multiple bookings.
- Each booking can have one payment and one review.
- Users can send and receive multiple messages.

## Indexing

- Indexed `location` in Property for faster search.
- Indexed `status` in Booking for filtering.
- Indexed `payment_method` in Payment for analytics.

The schema is normalized to 3NF and optimized for real-world Airbnb-like scenarios.

