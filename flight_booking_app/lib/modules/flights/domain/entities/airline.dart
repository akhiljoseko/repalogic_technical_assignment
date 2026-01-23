import 'package:freezed_annotation/freezed_annotation.dart';

part 'airline.freezed.dart';
part 'airline.g.dart';

@freezed
sealed class Airline with _$Airline {
  const factory Airline({
    required String name,
    required String code,
  }) = _Airline;

  factory Airline.fromJson(Map<String, dynamic> json) =>
      _$AirlineFromJson(json);
}
