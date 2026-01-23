# Flight Booking App

A comprehensive Flutter application demonstrating Clean Architecture, State Management, and modern best practices for a flight booking experience.

![license][license_badge]

## 🌟 Features

- **Flight Search**: Search for flights by origin, destination, and date.
- **Airport Autocomplete**: Real-time suggestions for airports and cities.
- **Flight Results**: View flight options with realistic prices and airlines.
- **Booking Flow**: Passenger details entry and booking confirmation.
- **Localization**: Full English support with localized error messages and labels.
- **Mock Data Generation**: Realistic flight simulation with random pricing and schedules.

## 🏗 Architecture

This project follows **Clean Architecture** principles to ensure separation of concerns, testability, and scalability.

```text
Presentation Layer (UI) 
       │
       ▼
State Management (Cubits)
       │
       ▼
Domain Layer (Repositories)
       │
       ▼
Data Layer (API / Data Sources)
```

### Layers

1.  **Presentation Layer (`lib/modules/flights/presentation`)**
    -   **Widgets**: UI components like `LocationInputCard`, `FlightCard`.
    -   **Cubits**: State management using `flutter_bloc` (`FlightSearchCubit`, `AirportSearchCubit`, `FlightBookingCubit`).
    -   **Layouts**: Responsive layouts for search and booking.

2.  **Domain Layer (`lib/modules/flights/domain`)**
    -   **Entities**: Pure Dart objects representing core business data (`Flight`, `Airport`).
    -   **Repositories**: Abstract interfaces defining contracts for data operations.
    -   **Exceptions**: Custom exceptions like `FlightSearchException`.

3.  **Data Layer (`lib/modules/flights/data`)**
    -   **Models**: DTOs (Data Transfer Objects) with JSON serialization (`FlightModel`).
    -   **Data Sources**: Implementations of data fetching logic (`FlightLocalApi`).
    -   **Repositories**: Concrete implementations of domain repositories (`FlightRepositoryImpl`).

## 🛠 Tech Stack

-   **Flutter**: UI Toolkit.
-   **Flutter Bloc**: State Management (Cubits).
-   **GoRouter**: Type-safe navigation and routing.
-   **Freezed**: Code generation for immutable classes and unions.
-   **JsonSerializable**: JSON serialization.
-   **Intl**: Internationalization and localization.

## 🚀 Getting Started

### Prerequisites

-   Flutter SDK
-   Dart SDK

### Running the App

This project uses flavors for different environments.

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

### Generating Code

This project uses code generation. If you make changes to models or localization:

```sh
# Helper script to run build_runner
$ dart run build_runner build --delete-conflicting-outputs

# Generate Localizations
$ flutter gen-l10n
```

## 📂 Folder Structure

```
lib/
├── core/               # Core utilities, router, exceptions
├── l10n/               # Localization files (.arb)
├── modules/
│   └── flights/        # Flight Feature Module
│       ├── data/       # API, Models, Repositories Impl
│       ├── domain/     # Entities, Repository Interfaces
│       └── presentation/ # UI, Cubits, States
└── main_*.dart         # Entry points
```

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
