# Database Schema - Airbnb Clone

This directory contains the SQL script for creating the database schema for the Airbnb clone project.

## Files:

- `schema.sql`: SQL script with CREATE TABLE statements, constraints, and indexes.

## Database Entities:

1. **User**: Stores information about users (hosts, guests, admin).
2. **Property**: Stores properties listed by hosts.
3. **Booking**: Stores booking details for properties.
4. **Payment**: Stores payment details for bookings.
5. **Review**: Stores reviews left by users on properties.
6. **Message**: Stores private messages between users.

## Notes:

- All primary keys are UUIDs.
- Foreign keys are used to maintain referential integrity.
- ENUMs are used to restrict certain fields to predefined values.
- Indexes are created on frequently queried columns.
