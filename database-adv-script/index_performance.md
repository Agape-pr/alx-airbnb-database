# Index Performance Report

## Objective
To identify and create indexes on high-usage columns in the database tables to improve query performance.

---

## Indexes Created

| Table     | Index Name           | Columns           | Type       | Purpose                         |
|-----------|----------------------|-------------------|------------|--------------------------------|
| Users     | idx_user_email       | email             | UNIQUE     | Fast lookup during login       |
| Bookings  | idx_booking_user_id  | user_id           | INDEX      | Speed up joins on user_id      |
| Bookings  | idx_booking_property_id | property_id     | INDEX      | Speed up joins on property_id  |
| Bookings  | idx_booking_booking_date | booking_date   | INDEX      | Improve date range queries     |
| Properties| idx_property_location| location          | INDEX      | Optimize location searches     |
| Properties| idx_property_host_id | host_id           | INDEX      | Optimize host-related queries  |

---

## Query Performance Analysis

### Query 1: Retrieve bookings by user

- **Before Indexing:**

```sql
EXPLAIN ANALYZE
SELECT * FROM Bookings WHERE user_id = 123;
