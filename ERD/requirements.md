# Airbnb Clone - Entity Relationship Diagram (ERD)

## 📊 ER Diagram

![ER Diagram](./airbnb-erd.png)  
*(Insert your diagram image here or provide a link to the hosted diagram if needed)*

---

## 🗂️ Entities and Attributes

### 1. **User**
- `user_id`: Primary Key, UUID, Indexed
- `first_name`: VARCHAR, NOT NULL
- `last_name`: VARCHAR, NOT NULL
- `email`: VARCHAR, UNIQUE, NOT NULL
- `password_hash`: VARCHAR, NOT NULL
- `phone_number`: VARCHAR, NULL
- `role`: ENUM (guest, host, admin), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 2. **Property**
- `property_id`: Primary Key, UUID, Indexed
- `host_id`: Foreign Key → User(`user_id`)
- `name`: VARCHAR, NOT NULL
- `description`: TEXT, NOT NULL
- `location`: VARCHAR, NOT NULL
- `pricepernight`: DECIMAL, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- `updated_at`: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

---

### 3. **Booking**
- `booking_id`: Primary Key, UUID, Indexed
- `property_id`: Foreign Key → Property(`property_id`)
- `user_id`: Foreign Key → User(`user_id`)
- `start_date`: DATE, NOT NULL
- `end_date`: DATE, NOT NULL
- `total_price`: DECIMAL, NOT NULL
- `status`: ENUM (pending, confirmed, canceled), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 4. **Payment**
- `payment_id`: Primary Key, UUID, Indexed
- `booking_id`: Foreign Key → Booking(`booking_id`)
- `amount`: DECIMAL, NOT NULL
- `payment_date`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- `payment_method`: ENUM (credit_card, paypal, stripe), NOT NULL

---

### 5. **Review**
- `review_id`: Primary Key, UUID, Indexed
- `property_id`: Foreign Key → Property(`property_id`)
- `user_id`: Foreign Key → User(`user_id`)
- `rating`: INTEGER (1 to 5), NOT NULL
- `comment`: TEXT, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 6. **Message**
- `message_id`: Primary Key, UUID, Indexed
- `sender_id`: Foreign Key → User(`user_id`)
- `recipient_id`: Foreign Key → User(`user_id`)
- `message_body`: TEXT, NOT NULL
- `sent_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

## 🔗 Relationships Explained

| Entity A    | Relationship Type | Entity B     | Description                                                   |
|------------|-------------------|--------------|---------------------------------------------------------------|
| **User**   | 1 ⇄ ∞             | **Property** | One user (host) can list many properties.                     |
| **User**   | 1 ⇄ ∞             | **Booking**  | One user (guest) can make many bookings.                      |
| **Property** | 1 ⇄ ∞           | **Booking**  | One property can be booked many times.                        |
| **Booking** | 1 ⇄ 1            | **Payment**  | One booking is associated with one payment.                   |
| **User**   | 1 ⇄ ∞             | **Review**   | Users can leave multiple reviews.                             |
| **Property** | 1 ⇄ ∞           | **Review**   | Properties can have multiple reviews.                         |
| **User**   | 1 ⇄ ∞             | **Message**  | Users can send/receive multiple messages to/from other users. |

---


