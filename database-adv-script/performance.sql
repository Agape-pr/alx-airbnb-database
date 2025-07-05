-- Before creating indexes: measure query performance
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 456;

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'New York';

-- Create indexes on high-usage columns to optimize queries

CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_users_email ON users(email);

-- After creating indexes: measure query performance again

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 123;

EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 456;

EXPLAIN ANALYZE
SELECT * FROM properties WHERE location = 'New York';
