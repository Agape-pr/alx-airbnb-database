# Optimization Report

## Initial Query
The initial query retrieved bookings with user, property, and payment details using multiple JOINs.

## Performance Analysis
Using `EXPLAIN ANALYZE`, we observed:
- Sequential Scans on `Bookings` and `Users` tables.
- High query cost.

## Optimization Steps
1. Added indexes to foreign keys (`user_id`, `property_id`, `booking_id`).
2. Used `LEFT JOIN` only where necessary.
3. Reduced selected columns to only required fields.

## Results
- Query execution time reduced by approximately XX%.
- Improved query plan from Seq Scan to Index Scan.
