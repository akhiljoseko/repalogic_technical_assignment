part of 'flight_booking_cubit.dart';

@freezed
class FlightBookingState with _$FlightBookingState {
  const factory FlightBookingState.initial() = _Initial;
  const factory FlightBookingState.loading() = _Loading;
  const factory FlightBookingState.success() = _Success;
  const factory FlightBookingState.failure(String message) = _Failure;
}
