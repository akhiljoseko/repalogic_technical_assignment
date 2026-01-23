import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_results/flight_results_screen.dart';
import 'package:flight_booking_app/modules/flights/presentation/flight_search/layouts/flight_search_compact_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

final appRouter = GoRouter(
  routes: $appRoutes,
  initialLocation: '/',
);

@TypedGoRoute<FlightSearchRoute>(
  path: '/',
  routes: [
    TypedGoRoute<FlightResultsRoute>(
      path: 'results',
    ),
  ],
)
class FlightSearchRoute extends GoRouteData with $FlightSearchRoute {
  const FlightSearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FlightSearchCompactLayout();
}

class FlightResultsRoute extends GoRouteData with $FlightResultsRoute {
  const FlightResultsRoute({this.$extra});

  final List<Flight>? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      FlightResultsScreen(flights: $extra ?? const []);
}
