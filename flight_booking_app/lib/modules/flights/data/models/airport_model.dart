import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_model.freezed.dart';

@freezed
sealed class AirportModel with _$AirportModel {
  const factory AirportModel({
    required String code,
    required String city,
    required String country,
    required String name,
  }) = _AirportModel;

  const AirportModel._();

  /// Convert model to domain entity
  Airport toEntity() {
    return Airport(
      code: code,
      city: city,
      country: country,
      name: name,
    );
  }
}
