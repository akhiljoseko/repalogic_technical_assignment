# Flutter Chat App




## Features ✨

- **User Identity**: Select active user from a list or add new users.
- **Real-time Chat**: Send and receive messages instantly with local updates.
- **Chat Rooms**: Create new chat rooms with multiple participants.
- **Live Updates**: Conversation list automatically updates with new messages and sorts by recency.
- **Localization**: Full support for internationalization (l10n) using `.arb` files.

---

## Architecture building_construction

This project follows a **Clean Architecture** approach, separating code into three main layers:

1.  **Domain Layer**: Contains Entities (business objects) and Repository Interfaces. This layer is independent of external frameworks.
    *   *Examples*: `User`, `Message`, `ChatRoom`, `ChatRoomsRepository`.
2.  **Data Layer**: Implements Repository Interfaces and handles data sources (local storage, APIs).
    *   *Examples*: `ChatRoomsRepositoryImpl`, `ChatRoomLocalDataSource` (Hive).
3.  **Presentation Layer**: UI and State Management.
    *   *Examples*: `ChatScreen`, `ChatCubit`, `ConversationsCubit`.

### State Management
We use **flutter_bloc** (Cubits) for managing state. Cubits invoke repository methods and emit states (Initial, Loading, Success, Error) to the UI.

### Navigation
**GoRouter** is used for handling navigation with type-safe routes, making it easier to manage deep links and complex flows.

### Real-time Updates
The app simulates real-time behavior using `StreamController.broadcast` in repositories.
*   When a message is sent or a room is created, the repository adds an event to its stream.
*   Cubits (like `ConversationsCubit`) listen to these streams and automatically refresh data, ensuring the UI is always in sync.

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

---

## Project Structure 📂

 The project is organized by modules features:

```dart
lib/
├── core/               # Core utilities, router, exceptions, theme
├── l10n/               # Localization files
├── modules/
│   ├── chat/           # Chat feature (Presentation, Domain, Data)
│   └── user_identity/  # User management (Presentation, Domain, Data)
├── services/           # External services (Hive, etc.)
└── shared/             # Shared widgets and constants
```
