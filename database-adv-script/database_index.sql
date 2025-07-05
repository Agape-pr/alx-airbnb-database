-- Measure performance BEFORE adding indexes
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE user_id = 123;
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE property_id = 456;
EXPLAIN ANALYZE SELECT * FROM Properties WHERE location = 'New York';

-- Create indexes
CREATE UNIQUE INDEX idx_user_email ON Users(email);

CREATE INDEX idx_booking_user_id ON Bookings(user_id);
CREATE INDEX idx_booking_property_id ON Bookings(property_id);
CREATE INDEX idx_booking_booking_date ON Bookings(booking_date);

CREATE INDEX idx_property_location ON Properties(location);
CREATE INDEX idx_property_host_id ON Properties(host_id);

-- Measure performance AFTER adding indexes
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE user_id = 123;
EXPLAIN ANALYZE SELECT * FROM Bookings WHERE property_id = 456;
EXPLAIN ANALYZE SELECT * FROM Properties WHERE location = 'New York';
