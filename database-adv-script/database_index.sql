-- Index on User email for quick login lookups
CREATE UNIQUE INDEX idx_user_email ON Users(email);

-- Indexes on Booking for join and filter optimization
CREATE INDEX idx_booking_user_id ON Bookings(user_id);
CREATE INDEX idx_booking_property_id ON Bookings(property_id);
CREATE INDEX idx_booking_booking_date ON Bookings(booking_date);

-- Index on Property location for location-based searches
CREATE INDEX idx_property_location ON Properties(location);

-- Index on Property host_id for host-related queries
CREATE INDEX idx_property_host_id ON Properties(host_id);
