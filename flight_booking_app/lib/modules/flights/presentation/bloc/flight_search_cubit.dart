import 'package:bloc/bloc.dart';
import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/flight.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_search_state.dart';
part 'flight_search_cubit.freezed.dart';

/// Cubit for managing flight search state.
///
/// Fetches flight results using [FlightRepository] based on search criteria.
/// Emits list of flights on success or error message on failure.
class FlightSearchCubit extends Cubit<FlightSearchState> {
  /// Creates a [FlightSearchCubit] with the given [FlightRepository].
  FlightSearchCubit(this._repository)
    : super(const FlightSearchState.initial());

  final FlightRepository _repository;

  /// Searches for flights matching the specified criteria.
  ///
  /// [origin] - Origin airport code or city.
  /// [destination] - Destination airport code or city.
  /// [date] - Travel date.
  ///
  /// Emits [FlightSearchState.loading], then [FlightSearchState.success] with results
  /// or [FlightSearchState.failure].
  Future<void> searchFlights({
    required String origin,
    required String destination,
    required DateTime date,
  }) async {
    emit(const FlightSearchState.loading());

    final result = await _repository.searchFlights(
      origin: origin,
      destination: destination,
      date: date,
    );

    switch (result) {
      case Ok<List<Flight>>():
        emit(FlightSearchState.success(result.value));
      case Error<List<Flight>>():
        emit(FlightSearchState.failure(result.error.toString()));
    }
  }
}
