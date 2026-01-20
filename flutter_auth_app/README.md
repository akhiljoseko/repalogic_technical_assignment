# Flutter Auth App

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A robust Flutter application showcasing a complete authentication system with a focus on Clean Architecture, reactive state management, and responsive UI.

---

## 🚀 Features

- **Reactive Authentication**: A single source of truth for auth state using streams.
- **Persistent Storage**: Local account storage and user data persistence using **Hive**.
- **Type-Safe Routing**: Seamless navigation and redirection logic with **GoRouter** and code generation.
- **Responsive Design**: Adaptive layouts for mobile, tablet, and desktop viewports.
- **Comprehensive Localization**: Multi-language support using ARB files (i18n).
- **Security**: Password obfuscation service for local data protection.
- **Custom Exceptions**: Centralized error handling with localized user-facing messages.
- **Clean Architecture**: Decoupled layers (Domain, Data, Presentation) for high maintainability.

---

## 🏗️ Architecture

This project follows a simplified **Clean Architecture** pattern combined with **BLoC/Cubit** for state management.

### Layered Separation
- **Domain Layer**: Contains fundamental business entities (`User`) and abstract repository definitions.
- **Data Layer**: Handles data retrieval, persistence (Hive), and external service implementations.
- **Presentation Layer**: UI widgets organized by feature modules, using Cubits to manage state.

### Reactive Auth Flow
The app uses a stream-based approach where the `AuthenticationRepository` broadcasts state changes. The `AuthCubit` listens to this stream, making the authentication status available to the UI and the Router for instant redirection.

---

## 🛠️ Technical Stack

- **Framework**: [Flutter](https://flutter.dev)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **Navigation**: [go_router](https://pub.dev/packages/go_router) & [go_router_builder](https://pub.dev/packages/go_router_builder)
- **Local Database**: [hive_ce](https://pub.dev/packages/hive_ce)
- **Dependency Injection**: Custom bootstrapping & BLoC providers
- **Linting**: [very_good_analysis](https://pub.dev/packages/very_good_analysis)

---

## 🏁 Getting Started

### Prerequisites
Ensure you have the Flutter SDK installed and configured.

### Flavors
This project contains 3 flavors:
- `development`
- `staging`
- `production`

To run the desired flavor, use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

\*_Works on iOS, Android, Web, and Windows._

---

## 🧪 Testing

To run all unit and widget tests:

```sh
$ very_good test --coverage --test-randomize-ordering-seed random
```

View coverage:
```sh
# Generate Report
$ genhtml coverage/lcov.info -o coverage/
# Open Report
$ open coverage/index.html
```

---

## 🌐 Localization

The project uses ARB files for translations located in `lib/l10n/arb/`.

To add a new string:
1. Update `lib/l10n/arb/app_en.arb`.
2. Run code generation:
```sh
flutter gen-l10n
```

---

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
