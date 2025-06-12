-- ---------------------------------------
-- Task 3: Seeding Airbnb Clone Database
-- ---------------------------------------

-- Insert Users
INSERT INTO `User` (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('a1b2c3d4-e5f6-7890-abcd-000000000001', 'Alice', 'Smith', 'alice@example.com', 'hashedpass1', '+250781234567', 'guest'),
  ('a1b2c3d4-e5f6-7890-abcd-000000000002', 'Bob', 'Johnson', 'bob@example.com', 'hashedpass2', '+250788888888', 'host'),
  ('a1b2c3d4-e5f6-7890-abcd-000000000003', 'Carol', 'Williams', 'carol@example.com', 'hashedpass3', '+250787777777', 'host');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1b2c3d4-e5f6-7890-abcd-000000000001', 'a1b2c3d4-e5f6-7890-abcd-000000000002', 'Cozy Apartment', 'Modern apartment with city view', 'Kigali, Rwanda', 45.00),
  ('p1b2c3d4-e5f6-7890-abcd-000000000002', 'a1b2c3d4-e5f6-7890-abcd-000000000003', 'Rural Lodge', 'Peaceful rural lodge near lake', 'Huye, Rwanda', 65.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1b2c3d4-e5f6-7890-abcd-000000000001', 'p1b2c3d4-e5f6-7890-abcd-000000000001', 'a1b2c3d4-e5f6-7890-abcd-000000000001', '2025-07-01', '2025-07-03', 90.00, 'confirmed'),
  ('b1b2c3d4-e5f6-7890-abcd-000000000002', 'p1b2c3d4-e5f6-7890-abcd-000000000002', 'a1b2c3d4-e5f6-7890-abcd-000000000001', '2025-08-01', '2025-08-05', 260.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1b2c3-d4e5-f678-90ab-cd0000000001', 'b1b2c3d4-e5f6-7890-abcd-000000000001', 90.00, 'credit_card'),
  ('pay1b2c3-d4e5-f678-90ab-cd0000000002', 'b1b2c3d4-e5f6-7890-abcd-000000000002', 260.00, 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1b2c3d4-e5f6-7890-abcd-000000000001', 'p1b2c3d4-e5f6-7890-abcd-000000000001', 'a1b2c3d4-e5f6-7890-abcd-000000000001', 5, 'Amazing place, very clean and quiet.'),
  ('r1b2c3d4-e5f6-7890-abcd-000000000002', 'p1b2c3d4-e5f6-7890-abcd-000000000002', 'a1b2c3d4-e5f6-7890-abcd-000000000001', 4, 'Nice stay, but a bit far from town.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1b2c3d4-e5f6-7890-abcd-000000000001', 'a1b2c3d4-e5f6-7890-abcd-000000000001', 'a1b2c3d4-e5f6-7890-abcd-000000000002', 'Hi, is your apartment available in July?'),
  ('m1b2c3d4-e5f6-7890-abcd-000000000002', 'a1b2c3d4-e5f6-7890-abcd-000000000002', 'a1b2c3d4-e5f6-7890-abcd-000000000001', 'Yes, it is available from July 1.');

