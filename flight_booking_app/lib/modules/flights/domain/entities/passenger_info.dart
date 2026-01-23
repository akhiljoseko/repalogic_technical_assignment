import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger_info.freezed.dart';
part 'passenger_info.g.dart';

@freezed
sealed class PassengerInfo with _$PassengerInfo {
  const factory PassengerInfo({
    required String name,
    required String passportNumber,
  }) = _PassengerInfo;

  factory PassengerInfo.fromJson(Map<String, dynamic> json) =>
      _$PassengerInfoFromJson(json);
}
