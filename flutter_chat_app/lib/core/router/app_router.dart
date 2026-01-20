import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: $appRoutes,
);
