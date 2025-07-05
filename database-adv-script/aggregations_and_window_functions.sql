-- Query with ROW_NUMBER()
SELECT
    p.property_id,
    p.property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_row_num
FROM Properties p
LEFT JOIN Bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.property_name
ORDER BY booking_row_num;

-- Query with RANK()
SELECT
    p.property_id,
    p.property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM Properties p
LEFT JOIN Bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.property_name
ORDER BY booking_rank;
