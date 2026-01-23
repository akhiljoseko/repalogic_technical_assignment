import 'package:bloc/bloc.dart';
import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_search_state.dart';
part 'airport_search_cubit.freezed.dart';

/// Cubit for managing airport search state.
///
/// Handles fetching airport suggestions based on user input query.
/// Used by [LocationInputCard] for autocomplete functionality.
class AirportSearchCubit extends Cubit<AirportSearchState> {
  /// Creates an [AirportSearchCubit] with the given [FlightRepository].
  AirportSearchCubit(this._repository)
    : super(const AirportSearchState.initial());

  final FlightRepository _repository;

  /// Searches for airports matching the [query].
  ///
  /// If [query] is empty, emits [AirportSearchState.initial].
  /// Otherwise, emits [AirportSearchState.loading] followed by
  /// [AirportSearchState.loaded] with results or [AirportSearchState.error].
  Future<void> searchAirports(String query) async {
    if (query.isEmpty) {
      emit(const AirportSearchState.initial());
      return;
    }

    emit(const AirportSearchState.loading());

    final result = await _repository.searchAirports(query);

    switch (result) {
      case Ok(:final value):
        emit(AirportSearchState.loaded(value));
      case Error(:final error):
        emit(AirportSearchState.error(error.toString()));
    }
  }

  /// Clears the current search results and resets state to initial.
  void clear() {
    emit(const AirportSearchState.initial());
  }
}
