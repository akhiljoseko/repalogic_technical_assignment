import 'package:flight_booking_app/modules/flights/domain/entities/passenger_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_model.freezed.dart';

@freezed
sealed class PassengerModel with _$PassengerModel {
  const factory PassengerModel({
    required String name,
    required String passportNumber,
  }) = _PassengerModel;

  const PassengerModel._();

  /// Convert domain entity to model
  factory PassengerModel.fromEntity(PassengerInfo entity) {
    return PassengerModel(
      name: entity.name,
      passportNumber: entity.passportNumber,
    );
  }
}
