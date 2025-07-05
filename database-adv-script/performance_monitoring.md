# Database Performance Monitoring and Refinement Report

## Objective
To monitor and enhance the performance of frequently used SQL queries by analyzing query execution plans and implementing necessary optimizations.

---

## 1. Performance Monitoring Tools Used

- **EXPLAIN ANALYZE**: Used to visualize the execution plan of complex queries.
- **SHOW PROFILE**: Used to measure execution time and identify expensive steps (MySQL only).

---

## 2. Queries Monitored

### Query A: Retrieve Bookings with User and Property Details

```sql
EXPLAIN ANALYZE
SELECT b.booking_id, u.first_name, p.name, b.start_date, b.end_date
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
WHERE b.start_date >= '2024-01-01';
