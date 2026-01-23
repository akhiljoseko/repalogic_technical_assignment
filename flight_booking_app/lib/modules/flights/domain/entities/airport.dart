import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport.freezed.dart';
part 'airport.g.dart';

@freezed
sealed class Airport with _$Airport {
  const factory Airport({
    required String code,
    required String city,
    required String country,
    required String name,
  }) = _Airport;

  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);
}
