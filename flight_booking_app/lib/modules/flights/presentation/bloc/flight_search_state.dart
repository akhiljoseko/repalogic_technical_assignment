part of 'flight_search_cubit.dart';

@freezed
class FlightSearchState with _$FlightSearchState {
  const factory FlightSearchState.initial() = _Initial;
  const factory FlightSearchState.loading() = _Loading;
  const factory FlightSearchState.success(List<Flight> flights) = _Success;
  const factory FlightSearchState.failure(String message) = _Failure;
}
