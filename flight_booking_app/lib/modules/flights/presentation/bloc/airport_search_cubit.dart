import 'package:bloc/bloc.dart';
import 'package:flight_booking_app/core/utils/result.dart';
import 'package:flight_booking_app/modules/flights/domain/entities/airport.dart';
import 'package:flight_booking_app/modules/flights/domain/repositories/flight_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airport_search_state.dart';
part 'airport_search_cubit.freezed.dart';

/// Cubit for managing airport search state
class AirportSearchCubit extends Cubit<AirportSearchState> {
  AirportSearchCubit(this._repository)
    : super(const AirportSearchState.initial());

  final FlightRepository _repository;

  /// Search for airports by query
  Future<void> searchAirports(String query) async {
    if (query.isEmpty) {
      emit(const AirportSearchState.initial());
      return;
    }

    emit(const AirportSearchState.loading());

    final result = await _repository.searchAirports(query);

    switch (result) {
      case Ok(:final value):
        emit(AirportSearchState.loaded(value));
      case Error(:final error):
        emit(AirportSearchState.error(error.toString()));
    }
  }

  /// Clear search results
  void clear() {
    emit(const AirportSearchState.initial());
  }
}
