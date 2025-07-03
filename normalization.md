# Database Normalization Report (3NF)

## Objective:
To ensure the database design for the Airbnb clone meets the requirements of the Third Normal Form (3NF), eliminating redundancy and ensuring data integrity.

---

## First Normal Form (1NF)

- All tables contain atomic (indivisible) values.
- Each record is unique and identifiable using a primary key (UUIDs).
✅ Achieved.

---

## Second Normal Form (2NF)

- All non-key attributes are fully dependent on the primary key.
- Since each table uses a single-column primary key (UUID), there are no partial dependencies.
✅ Achieved.

---

## Third Normal Form (3NF)

- There are no transitive dependencies (non-key attributes depending on other non-key attributes).
- All non-key attributes depend **only on the primary key**.

### Review:

| Table      | Status |
|-----------|--------|
| User      | Compliant |
| Property  | Compliant |
| Booking   | Compliant |
| Payment   | Compliant |
| Review    | Compliant |
| Message   | Compliant |

✅ All tables meet 3NF.

---

## Conclusion:

The database schema is already well-structured and meets the requirements of Third Normal Form (3NF). No further normalization steps are required at this stage.

