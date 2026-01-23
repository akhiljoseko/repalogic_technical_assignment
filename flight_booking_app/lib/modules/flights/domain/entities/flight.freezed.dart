// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Flight {

 int get id; Airline get airline; String get flightNumber; DateTime get departureTime; DateTime get arrivalTime; Airport get origin; Airport get destination; double get price;
/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlightCopyWith<Flight> get copyWith => _$FlightCopyWithImpl<Flight>(this as Flight, _$identity);

  /// Serializes this Flight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Flight&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,airline,flightNumber,departureTime,arrivalTime,origin,destination,price);

@override
String toString() {
  return 'Flight(id: $id, airline: $airline, flightNumber: $flightNumber, departureTime: $departureTime, arrivalTime: $arrivalTime, origin: $origin, destination: $destination, price: $price)';
}


}

/// @nodoc
abstract mixin class $FlightCopyWith<$Res>  {
  factory $FlightCopyWith(Flight value, $Res Function(Flight) _then) = _$FlightCopyWithImpl;
@useResult
$Res call({
 int id, Airline airline, String flightNumber, DateTime departureTime, DateTime arrivalTime, Airport origin, Airport destination, double price
});


$AirlineCopyWith<$Res> get airline;$AirportCopyWith<$Res> get origin;$AirportCopyWith<$Res> get destination;

}
/// @nodoc
class _$FlightCopyWithImpl<$Res>
    implements $FlightCopyWith<$Res> {
  _$FlightCopyWithImpl(this._self, this._then);

  final Flight _self;
  final $Res Function(Flight) _then;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? airline = null,Object? flightNumber = null,Object? departureTime = null,Object? arrivalTime = null,Object? origin = null,Object? destination = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as Airline,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Airport,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Airport,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirlineCopyWith<$Res> get airline {
  
  return $AirlineCopyWith<$Res>(_self.airline, (value) {
    return _then(_self.copyWith(airline: value));
  });
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res> get origin {
  
  return $AirportCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res> get destination {
  
  return $AirportCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}


/// Adds pattern-matching-related methods to [Flight].
extension FlightPatterns on Flight {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Flight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Flight value)  $default,){
final _that = this;
switch (_that) {
case _Flight():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Flight value)?  $default,){
final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  Airline airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  Airport origin,  Airport destination,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that.id,_that.airline,_that.flightNumber,_that.departureTime,_that.arrivalTime,_that.origin,_that.destination,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  Airline airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  Airport origin,  Airport destination,  double price)  $default,) {final _that = this;
switch (_that) {
case _Flight():
return $default(_that.id,_that.airline,_that.flightNumber,_that.departureTime,_that.arrivalTime,_that.origin,_that.destination,_that.price);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  Airline airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  Airport origin,  Airport destination,  double price)?  $default,) {final _that = this;
switch (_that) {
case _Flight() when $default != null:
return $default(_that.id,_that.airline,_that.flightNumber,_that.departureTime,_that.arrivalTime,_that.origin,_that.destination,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Flight implements Flight {
  const _Flight({required this.id, required this.airline, required this.flightNumber, required this.departureTime, required this.arrivalTime, required this.origin, required this.destination, required this.price});
  factory _Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);

@override final  int id;
@override final  Airline airline;
@override final  String flightNumber;
@override final  DateTime departureTime;
@override final  DateTime arrivalTime;
@override final  Airport origin;
@override final  Airport destination;
@override final  double price;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlightCopyWith<_Flight> get copyWith => __$FlightCopyWithImpl<_Flight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Flight&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,airline,flightNumber,departureTime,arrivalTime,origin,destination,price);

@override
String toString() {
  return 'Flight(id: $id, airline: $airline, flightNumber: $flightNumber, departureTime: $departureTime, arrivalTime: $arrivalTime, origin: $origin, destination: $destination, price: $price)';
}


}

/// @nodoc
abstract mixin class _$FlightCopyWith<$Res> implements $FlightCopyWith<$Res> {
  factory _$FlightCopyWith(_Flight value, $Res Function(_Flight) _then) = __$FlightCopyWithImpl;
@override @useResult
$Res call({
 int id, Airline airline, String flightNumber, DateTime departureTime, DateTime arrivalTime, Airport origin, Airport destination, double price
});


@override $AirlineCopyWith<$Res> get airline;@override $AirportCopyWith<$Res> get origin;@override $AirportCopyWith<$Res> get destination;

}
/// @nodoc
class __$FlightCopyWithImpl<$Res>
    implements _$FlightCopyWith<$Res> {
  __$FlightCopyWithImpl(this._self, this._then);

  final _Flight _self;
  final $Res Function(_Flight) _then;

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? airline = null,Object? flightNumber = null,Object? departureTime = null,Object? arrivalTime = null,Object? origin = null,Object? destination = null,Object? price = null,}) {
  return _then(_Flight(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as Airline,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as Airport,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as Airport,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirlineCopyWith<$Res> get airline {
  
  return $AirlineCopyWith<$Res>(_self.airline, (value) {
    return _then(_self.copyWith(airline: value));
  });
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res> get origin {
  
  return $AirportCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of Flight
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportCopyWith<$Res> get destination {
  
  return $AirportCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}

// dart format on
