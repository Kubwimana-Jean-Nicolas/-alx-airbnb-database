# Seed Data for Airbnb Clone Database

This SQL script (`seed.sql`) inserts realistic sample data into the MySQL database to simulate bookings, payments, and reviews.

## Entities Seeded:
- 3 Users (Guest and Hosts)
- 2 Properties
- 2 Bookings
- 2 Payments
- 2 Reviews
- 2 Messages

## Usage

1. Make sure tables are created first.
2. Run:

```bash
mysql -u root -p airbnb_clone < seed.sql

