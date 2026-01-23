import 'package:bloc/bloc.dart';
import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/passenger_info.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_booking_state.dart';
part 'flight_booking_cubit.freezed.dart';

/// Cubit for managing flight booking state.
///
/// Handles the booking process by delegating to the [FlightRepository].
/// Emits loading, success, or failure states to drive the UI.
class FlightBookingCubit extends Cubit<FlightBookingState> {
  /// Creates a [FlightBookingCubit] with the given [FlightRepository].
  FlightBookingCubit(this._repository)
    : super(const FlightBookingState.initial());

  final FlightRepository _repository;

  /// Attempts to book a flight for the provided passengers.
  ///
  /// [flightId] - The ID of the flight to book.
  /// [passengers] - List of passenger information.
  ///
  /// Emits [FlightBookingState.loading], then either [FlightBookingState.success]
  /// or [FlightBookingState.failure] based on the repository result.
  Future<void> bookFlight({
    required int flightId,
    required List<PassengerInfo> passengers,
  }) async {
    emit(const FlightBookingState.loading());

    final result = await _repository.bookFlight(
      flightId: flightId,
      passengers: passengers,
    );

    switch (result) {
      case Ok<bool>():
        emit(const FlightBookingState.success());
      case Error<bool>():
        emit(FlightBookingState.failure(result.error.toString()));
    }
  }
}
