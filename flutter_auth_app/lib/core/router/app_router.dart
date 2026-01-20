import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/login/login_screen.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/register_screen.dart';
import 'package:flutter_auth_app/modules/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

/// Standard route for the Home screen.
/// Requires the user to be authenticated.
@TypedGoRoute<HomeRoute>(
  path: '/',
  name: HomeScreen.routeName,
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

/// Standard route for the Login screen.
/// Accessible when unauthenticated.
@TypedGoRoute<LoginRoute>(
  path: '/login',
  name: LoginScreen.routeName,
)
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

/// Standard route for the Register screen.
/// Accessible when unauthenticated.
@TypedGoRoute<RegisterRoute>(
  path: '/register',
  name: RegisterScreen.routeName,
)
class RegisterRoute extends GoRouteData with $RegisterRoute {
  const RegisterRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterScreen();
}

/// Manages the application's routing configuration using [GoRouter].
///
/// Features include:
/// - Type-safe routing using `go_router_builder`.
/// - Reactive redirection based on [AuthCubit] state.
/// - Automatic navigation to the login page for protected routes.
class AppRouter {
  AppRouter({required this.authCubit});

  final AuthCubit authCubit;

  late final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: const HomeRoute().location,
    routes: $appRoutes,
    redirect: (context, state) {
      final authState = authCubit.state;
      final location = state.matchedLocation;

      // Identify if the target location is a public (unprotected) route.
      final isLoginRoute = location == const LoginRoute().location;
      final isRegisterRoute = location == const RegisterRoute().location;
      final isPublicRoute = isLoginRoute || isRegisterRoute;

      return authState.maybeWhen(
        // If authorized, prevent access to public routes by redirecting to Home.
        authorized: (_) => isPublicRoute ? const HomeRoute().location : null,
        // If not authorized, force redirection to Login for any non-public route.
        orElse: () => isPublicRoute ? null : const LoginRoute().location,
      );
    },
    // Triggers a router refresh whenever the AuthCubit emits a new state.
    refreshListenable: _RefreshStream(authCubit.stream),
  );
}

/// A [ChangeNotifier] that triggers a refresh when the provided [Stream] emits.
/// Used to keep [GoRouter] in sync with external state managers like BLoC.
class _RefreshStream extends ChangeNotifier {
  _RefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
