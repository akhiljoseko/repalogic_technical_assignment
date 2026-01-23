import 'package:flight_booking_app/core/exceptions/app_exception.dart';
import 'package:flight_booking_app/l10n/gen/app_localizations.dart';

/// Exception thrown when flight search fails
class FlightSearchException extends AppException {
  FlightSearchException()
    : super(
        errorCode: 'flight_search_error',
        errorMessage: 'Failed to search flights',
      );

  @override
  String localize(AppLocalizations l10n) {
    // Should be l10n.errFlightSearch
    return errorMessage;
  }
}

/// Exception thrown when flight booking fails
class FlightBookingException extends AppException {
  FlightBookingException()
    : super(
        errorCode: 'flight_booking_error',
        errorMessage: 'Failed to book flight',
      );

  @override
  String localize(AppLocalizations l10n) {
    // Should be l10n.errFlightBooking
    return errorMessage;
  }
}

/// Exception thrown when airport search fails
class AirportSearchException extends AppException {
  AirportSearchException()
    : super(
        errorCode: 'airport_search_error',
        errorMessage: 'Failed to search airports',
      );

  @override
  String localize(AppLocalizations l10n) {
    // Should be l10n.errAirportSearch
    return errorMessage;
  }
}
