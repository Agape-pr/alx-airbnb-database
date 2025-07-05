-- 1. Create Parent Table
CREATE TABLE Bookings_Partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    amount DECIMAL(10, 2)
) PARTITION BY RANGE (start_date);

-- 2. Create Partitions
CREATE TABLE Bookings_2024_Q1 PARTITION OF Bookings_Partitioned
FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE Bookings_2024_Q2 PARTITION OF Bookings_Partitioned
FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE Bookings_2024_Q3 PARTITION OF Bookings_Partitioned
FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE Bookings_2024_Q4 PARTITION OF Bookings_Partitioned
FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

-- 3. Insert Sample Data
INSERT INTO Bookings_Partitioned (user_id, property_id, start_date, end_date, status, amount)
VALUES 
(1, 2, '2024-01-15', '2024-01-20', 'Confirmed', 250.00),
(2, 3, '2024-04-10', '2024-04-15', 'Cancelled', 0.00),
(3, 1, '2024-07-05', '2024-07-12', 'Confirmed', 500.00);

-- 4. Query by Date Range (Optimized on Partitioned Table)
SELECT *
FROM Bookings_Partitioned
WHERE start_date BETWEEN '2024-04-01' AND '2024-07-01';
