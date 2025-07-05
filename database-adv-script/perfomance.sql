-- Initial query: retrieve bookings with user, property, and payment info
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.status
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
LEFT JOIN Payments pay ON b.booking_id = pay.booking_id;

-- Measure performance BEFORE adding indexes
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.status
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
LEFT JOIN Payments pay ON b.booking_id = pay.booking_id;

-- Create indexes to optimize joins and filters
CREATE INDEX idx_booking_user_id ON Bookings(user_id);
CREATE INDEX idx_booking_property_id ON Bookings(property_id);
CREATE INDEX idx_payments_booking_id ON Payments(booking_id);

-- Measure performance AFTER adding indexes
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.property_name,
    p.location,
    pay.payment_id,
    pay.amount,
    pay.status
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
LEFT JOIN Payments pay ON b.booking_id = pay.booking_id;
