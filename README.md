# Air Ticket Reservation System
A relational database-backed flight booking system built with MySQL and Flask.  
The system models multi-entity booking workflows and enforces data integrity across interconnected records.

## Overview

This project implements a structured reservation system that models:

- Flights  
- Passengers  
- Bookings  
- Purchases  

The focus of the system is relational schema design, referential integrity, and transactional consistency.  
The database structure reflects real booking operations while preventing duplicate entries and invalid state transitions.

---

## System Components
- MySQL  
- Flask  
- Python  
- SQL

---
## Database Design

The system uses a normalized relational schema with:

- Primary and foreign key constraints  
- Enforced referential integrity  
- Structured relationships across entities  
- Capacity validation before ticket creation  

### Core Tables

- 'customer'  
- 'booking_agent'  
- 'airline_staff'  
- 'airline'  
- 'airport'  
- 'airplane'  
- 'flight'  
- 'seat_class'  
- 'ticket'  
- 'purchases'  
- 'agent_airline_authorization'

The schema ensures that:

- Bookings reference existing customers and flights  
- Seat availability is checked before purchase  
- Ticket and purchase records are created together to preserve consistency

[Project Documentation (PDF)](https://github.com/ameliatuttle26/airline_project/blob/main/Project_Documentation.pdf)
