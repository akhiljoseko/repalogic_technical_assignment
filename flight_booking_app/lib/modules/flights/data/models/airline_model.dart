import 'package:flight_booking_app/modules/flights/domain/entities/airline.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airline_model.freezed.dart';

@freezed
sealed class AirlineModel with _$AirlineModel {
  const factory AirlineModel({
    required String name,
    required String code,
  }) = _AirlineModel;

  const AirlineModel._();

  /// Convert model to domain entity
  Airline toEntity() {
    return Airline(
      name: name,
      code: code,
    );
  }
}
