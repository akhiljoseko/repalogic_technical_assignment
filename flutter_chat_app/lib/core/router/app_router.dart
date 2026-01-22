import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:go_router/go_router.dart';

/// The main router configuration for the application.
///
/// It uses [GoRouter] to handle navigation and deep linking.
/// The routes are generated using `go_router_builder` and defined in `app_routes.dart`.
final appRouter = GoRouter(
  initialLocation: '/',
  routes: $appRoutes,
);
