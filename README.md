

# Flutter Assignment – Multi-App Repository

This repository contains **three independent Flutter applications**, each built to satisfy a specific requirement from the assessment.
All applications are intentionally kept **simple, scoped, and focused on core functionality**, while following clean architecture and state-management best practices.

---

## 📱 Applications Overview

### 1️⃣ User Authentication App

### 2️⃣ Local Chat Application

### 3️⃣ Flight Search & Booking App

Each app is implemented as a **separate Flutter project**, with no shared code, to keep responsibilities and scope clearly isolated.

---

## 1️⃣ User Authentication App

### Purpose

A simple application that allows users to **register** and **log in** using an email and password.

### Features

* User registration (email, password, name)
* User login
* Input validation
* Auth state handling
* Local persistence

### Implementation Highlights

* **State management:** Cubit
* **Architecture:** Presentation → Domain → Data
* **Local database:** Hive
* **Database abstraction:**

  * A database interface is defined and implemented using Hive
  * This allows the database to be swapped later without changing higher layers
* **Auth flow:**

  * Authentication logic is handled via a local API layer
  * The repository does not contain authentication rules directly

### Notes

* No remote backend is used
* The app focuses on demonstrating clean auth flow and persistence

---

## 2️⃣ Local Chat Application

### Purpose

A simple **local-only chat application** that demonstrates chat room creation and messaging between users.

### Features

* Create chat rooms
* Add users to chat rooms
* Send and view messages
* View chat room list with last message preview

### Key Design Decisions

* **No authentication:**
  Users are local identities only. Authentication is intentionally excluded.
* **Local-only:**
  No networking or cross-device communication.
* **No unread count or read receipts:**
  These features are intentionally excluded to keep scope aligned with requirements.

### Implementation Highlights

* **Core entities:** User, ChatRoom, Message
* **Repositories:**

  * `ChatRoomRepository`
  * `MessageRepository`
* **Last message preview:**

  * Last message text, timestamp, and sender are **derived at runtime**
  * This data is **not stored** in the ChatRoom entity
* **State management:** Cubit
* **Database:** Hive
* **Architecture:** Feature-based with clear separation of domain and presentation models

### Notes

* UI-specific models are used for chat room list rendering
* Business logic remains lightweight and easy to follow

---

## 3️⃣ Flight Search & Booking App

### Purpose

A simple application that allows users to **search for flights** and **book a selected flight**.

### Features

* Search flights by:

  * Origin
  * Destination
  * Date
* View list of matching flights
* Book a flight (simulated)

### Key Design Decisions

* **No authentication:**
  Booking is treated as a guest flow, as per requirements.
* **Mock data:**

  * Uses structured mock data instead of a real flight API
  * The requirement explicitly allows sample JSON payloads
* **Realistic data modeling:**

  * Real airport codes (IATA)
  * Real airline names
  * Realistic flight timings and prices

### Implementation Highlights

* **Module-based structure:** Single `flights` module
* **Entities:** Airport, Airline, Flight, Booking
* **Data source:**

  * Flight data is loaded from local JSON assets
  * Data is filtered dynamically to simulate backend search behavior
* **Repositories:**

  * `FlightRepository` for searching flights
  * `BookingRepository` for booking simulation
* **State management:** Cubit
* **Architecture:** Presentation → Domain → Data

### Notes

* The architecture supports swapping mock data with a real API later
* Focus is on flow and state handling, not external API complexity

---

## 🧱 Architecture Summary

Across all three applications:

* **State management:** Cubit (Bloc)
* **Architecture pattern:** Clean separation of concerns
* **Repositories:** Expose intent, not implementation
* **Local persistence:** Hive where applicable
* **UI models:** Used where derived data is required
* **Over-engineering avoided intentionally**

---

## 🎯 Scope & Intent

These applications are designed to:

* Match the assessment requirements **exactly**
* Demonstrate clean Flutter architecture
* Show sound product and engineering judgment
* Avoid unnecessary features that increase complexity

---
