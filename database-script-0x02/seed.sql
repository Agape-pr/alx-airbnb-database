-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
  ('uuid-user-1', 'John', 'Doe', 'john@example.com', 'hashedpassword1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('uuid-user-2', 'Alice', 'Smith', 'alice@example.com', 'hashedpassword2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('uuid-user-3', 'Admin', 'User', 'admin@example.com', 'hashedpassword3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
  ('uuid-property-1', 'uuid-user-2', 'Cozy Apartment', 'A cozy place in the city center.', 'New York', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('uuid-property-2', 'uuid-user-2', 'Beach House', 'A beautiful beach house with ocean views.', 'Miami', 250.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
  ('uuid-booking-1', 'uuid-property-1', 'uuid-user-1', '2024-08-01', '2024-08-05', 480.00, 'confirmed', CURRENT_TIMESTAMP),
  ('uuid-booking-2', 'uuid-property-2', 'uuid-user-1', '2024-09-10', '2024-09-15', 1250.00, 'pending', CURRENT_TIMESTAMP);

-- Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
  ('uuid-payment-1', 'uuid-booking-1', 480.00, CURRENT_TIMESTAMP, 'credit_card'),
  ('uuid-payment-2', 'uuid-booking-2', 1250.00, CURRENT_TIMESTAMP, 'paypal');

-- Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
  ('uuid-review-1', 'uuid-property-1', 'uuid-user-1', 5, 'Amazing place, loved it!', CURRENT_TIMESTAMP),
  ('uuid-review-2', 'uuid-property-2', 'uuid-user-1', 4, 'Great stay, but a bit pricey.', CURRENT_TIMESTAMP);

-- Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
  ('uuid-message-1', 'uuid-user-1', 'uuid-user-2', 'Hi, is the apartment available for next weekend?', CURRENT_TIMESTAMP),
  ('uuid-message-2', 'uuid-user-2', 'uuid-user-1', 'Yes! It is available. Feel free to book.', CURRENT_TIMESTAMP);

