// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$flightSearchRoute];

RouteBase get $flightSearchRoute => GoRouteData.$route(
  path: '/',
  factory: $FlightSearchRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'results',
      factory: $FlightResultsRoute._fromState,
    ),
  ],
);

mixin $FlightSearchRoute on GoRouteData {
  static FlightSearchRoute _fromState(GoRouterState state) =>
      const FlightSearchRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FlightResultsRoute on GoRouteData {
  static FlightResultsRoute _fromState(GoRouterState state) =>
      FlightResultsRoute($extra: state.extra as List<Flight>?);

  FlightResultsRoute get _self => this as FlightResultsRoute;

  @override
  String get location => GoRouteData.$location('/results');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
