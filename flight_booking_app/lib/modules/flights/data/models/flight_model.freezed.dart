// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FlightModel {

 int get id; AirlineModel get airline; String get flightNumber; DateTime get departureTime; DateTime get arrivalTime; AirportModel get origin; AirportModel get destination; double get price;
/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlightModelCopyWith<FlightModel> get copyWith => _$FlightModelCopyWithImpl<FlightModel>(this as FlightModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlightModel&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,airline,flightNumber,departureTime,arrivalTime,origin,destination,price);

@override
String toString() {
  return 'FlightModel(id: $id, airline: $airline, flightNumber: $flightNumber, departureTime: $departureTime, arrivalTime: $arrivalTime, origin: $origin, destination: $destination, price: $price)';
}


}

/// @nodoc
abstract mixin class $FlightModelCopyWith<$Res>  {
  factory $FlightModelCopyWith(FlightModel value, $Res Function(FlightModel) _then) = _$FlightModelCopyWithImpl;
@useResult
$Res call({
 int id, AirlineModel airline, String flightNumber, DateTime departureTime, DateTime arrivalTime, AirportModel origin, AirportModel destination, double price
});


$AirlineModelCopyWith<$Res> get airline;$AirportModelCopyWith<$Res> get origin;$AirportModelCopyWith<$Res> get destination;

}
/// @nodoc
class _$FlightModelCopyWithImpl<$Res>
    implements $FlightModelCopyWith<$Res> {
  _$FlightModelCopyWithImpl(this._self, this._then);

  final FlightModel _self;
  final $Res Function(FlightModel) _then;

/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? airline = null,Object? flightNumber = null,Object? departureTime = null,Object? arrivalTime = null,Object? origin = null,Object? destination = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as AirlineModel,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as AirportModel,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as AirportModel,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirlineModelCopyWith<$Res> get airline {
  
  return $AirlineModelCopyWith<$Res>(_self.airline, (value) {
    return _then(_self.copyWith(airline: value));
  });
}/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportModelCopyWith<$Res> get origin {
  
  return $AirportModelCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportModelCopyWith<$Res> get destination {
  
  return $AirportModelCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlightModel].
extension FlightModelPatterns on FlightModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlightModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlightModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlightModel value)  $default,){
final _that = this;
switch (_that) {
case _FlightModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlightModel value)?  $default,){
final _that = this;
switch (_that) {
case _FlightModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  AirlineModel airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  AirportModel origin,  AirportModel destination,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlightModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  AirlineModel airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  AirportModel origin,  AirportModel destination,  double price)  $default,) {final _that = this;
switch (_that) {
case _FlightModel():
return $default(_that.id,_that.airline,_that.flightNumber,_that.departureTime,_that.arrivalTime,_that.origin,_that.destination,_that.price);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  AirlineModel airline,  String flightNumber,  DateTime departureTime,  DateTime arrivalTime,  AirportModel origin,  AirportModel destination,  double price)?  $default,) {final _that = this;
switch (_that) {
case _FlightModel() when $default != null:
return $default(_that.id,_that.airline,_that.flightNumber,_that.departureTime,_that.arrivalTime,_that.origin,_that.destination,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _FlightModel extends FlightModel {
  const _FlightModel({required this.id, required this.airline, required this.flightNumber, required this.departureTime, required this.arrivalTime, required this.origin, required this.destination, required this.price}): super._();
  

@override final  int id;
@override final  AirlineModel airline;
@override final  String flightNumber;
@override final  DateTime departureTime;
@override final  DateTime arrivalTime;
@override final  AirportModel origin;
@override final  AirportModel destination;
@override final  double price;

/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlightModelCopyWith<_FlightModel> get copyWith => __$FlightModelCopyWithImpl<_FlightModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlightModel&&(identical(other.id, id) || other.id == id)&&(identical(other.airline, airline) || other.airline == airline)&&(identical(other.flightNumber, flightNumber) || other.flightNumber == flightNumber)&&(identical(other.departureTime, departureTime) || other.departureTime == departureTime)&&(identical(other.arrivalTime, arrivalTime) || other.arrivalTime == arrivalTime)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,id,airline,flightNumber,departureTime,arrivalTime,origin,destination,price);

@override
String toString() {
  return 'FlightModel(id: $id, airline: $airline, flightNumber: $flightNumber, departureTime: $departureTime, arrivalTime: $arrivalTime, origin: $origin, destination: $destination, price: $price)';
}


}

/// @nodoc
abstract mixin class _$FlightModelCopyWith<$Res> implements $FlightModelCopyWith<$Res> {
  factory _$FlightModelCopyWith(_FlightModel value, $Res Function(_FlightModel) _then) = __$FlightModelCopyWithImpl;
@override @useResult
$Res call({
 int id, AirlineModel airline, String flightNumber, DateTime departureTime, DateTime arrivalTime, AirportModel origin, AirportModel destination, double price
});


@override $AirlineModelCopyWith<$Res> get airline;@override $AirportModelCopyWith<$Res> get origin;@override $AirportModelCopyWith<$Res> get destination;

}
/// @nodoc
class __$FlightModelCopyWithImpl<$Res>
    implements _$FlightModelCopyWith<$Res> {
  __$FlightModelCopyWithImpl(this._self, this._then);

  final _FlightModel _self;
  final $Res Function(_FlightModel) _then;

/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? airline = null,Object? flightNumber = null,Object? departureTime = null,Object? arrivalTime = null,Object? origin = null,Object? destination = null,Object? price = null,}) {
  return _then(_FlightModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,airline: null == airline ? _self.airline : airline // ignore: cast_nullable_to_non_nullable
as AirlineModel,flightNumber: null == flightNumber ? _self.flightNumber : flightNumber // ignore: cast_nullable_to_non_nullable
as String,departureTime: null == departureTime ? _self.departureTime : departureTime // ignore: cast_nullable_to_non_nullable
as DateTime,arrivalTime: null == arrivalTime ? _self.arrivalTime : arrivalTime // ignore: cast_nullable_to_non_nullable
as DateTime,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as AirportModel,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as AirportModel,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirlineModelCopyWith<$Res> get airline {
  
  return $AirlineModelCopyWith<$Res>(_self.airline, (value) {
    return _then(_self.copyWith(airline: value));
  });
}/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportModelCopyWith<$Res> get origin {
  
  return $AirportModelCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of FlightModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AirportModelCopyWith<$Res> get destination {
  
  return $AirportModelCopyWith<$Res>(_self.destination, (value) {
    return _then(_self.copyWith(destination: value));
  });
}
}

// dart format on
