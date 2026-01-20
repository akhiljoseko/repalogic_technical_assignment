import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_auth_app/modules/authentication/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/login/login_screen.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/register_screen.dart';
import 'package:flutter_auth_app/modules/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  name: HomeScreen.routeName,
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

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
      final isLoginRoute = location == const LoginRoute().location;
      final isRegisterRoute = location == const RegisterRoute().location;
      final isPublicRoute = isLoginRoute || isRegisterRoute;

      return authState.maybeWhen(
        authorized: (_) => isPublicRoute ? const HomeRoute().location : null,
        orElse: () => isPublicRoute ? null : const LoginRoute().location,
      );
    },
    refreshListenable: _RefreshStream(authCubit.stream),
  );
}

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
