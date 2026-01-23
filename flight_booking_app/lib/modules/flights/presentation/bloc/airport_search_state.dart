part of 'airport_search_cubit.dart';

/// State for airport search using freezed
@freezed
class AirportSearchState with _$AirportSearchState {
  /// Initial state - no search performed
  const factory AirportSearchState.initial() = _Initial;

  /// Loading state - search in progress
  const factory AirportSearchState.loading() = _Loading;

  /// Loaded state - search results available
  const factory AirportSearchState.loaded(List<Airport> airports) = _Loaded;

  /// Error state - search failed
  const factory AirportSearchState.error(String message) = _Error;
}
