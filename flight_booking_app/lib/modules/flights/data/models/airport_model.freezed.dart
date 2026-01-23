// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AirportModel {

 String get code; String get city; String get country; String get name;
/// Create a copy of AirportModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirportModelCopyWith<AirportModel> get copyWith => _$AirportModelCopyWithImpl<AirportModel>(this as AirportModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AirportModel&&(identical(other.code, code) || other.code == code)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,code,city,country,name);

@override
String toString() {
  return 'AirportModel(code: $code, city: $city, country: $country, name: $name)';
}


}

/// @nodoc
abstract mixin class $AirportModelCopyWith<$Res>  {
  factory $AirportModelCopyWith(AirportModel value, $Res Function(AirportModel) _then) = _$AirportModelCopyWithImpl;
@useResult
$Res call({
 String code, String city, String country, String name
});




}
/// @nodoc
class _$AirportModelCopyWithImpl<$Res>
    implements $AirportModelCopyWith<$Res> {
  _$AirportModelCopyWithImpl(this._self, this._then);

  final AirportModel _self;
  final $Res Function(AirportModel) _then;

/// Create a copy of AirportModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? city = null,Object? country = null,Object? name = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AirportModel].
extension AirportModelPatterns on AirportModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AirportModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AirportModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AirportModel value)  $default,){
final _that = this;
switch (_that) {
case _AirportModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AirportModel value)?  $default,){
final _that = this;
switch (_that) {
case _AirportModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String city,  String country,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AirportModel() when $default != null:
return $default(_that.code,_that.city,_that.country,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String city,  String country,  String name)  $default,) {final _that = this;
switch (_that) {
case _AirportModel():
return $default(_that.code,_that.city,_that.country,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String city,  String country,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AirportModel() when $default != null:
return $default(_that.code,_that.city,_that.country,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _AirportModel extends AirportModel {
  const _AirportModel({required this.code, required this.city, required this.country, required this.name}): super._();
  

@override final  String code;
@override final  String city;
@override final  String country;
@override final  String name;

/// Create a copy of AirportModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirportModelCopyWith<_AirportModel> get copyWith => __$AirportModelCopyWithImpl<_AirportModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AirportModel&&(identical(other.code, code) || other.code == code)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,code,city,country,name);

@override
String toString() {
  return 'AirportModel(code: $code, city: $city, country: $country, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AirportModelCopyWith<$Res> implements $AirportModelCopyWith<$Res> {
  factory _$AirportModelCopyWith(_AirportModel value, $Res Function(_AirportModel) _then) = __$AirportModelCopyWithImpl;
@override @useResult
$Res call({
 String code, String city, String country, String name
});




}
/// @nodoc
class __$AirportModelCopyWithImpl<$Res>
    implements _$AirportModelCopyWith<$Res> {
  __$AirportModelCopyWithImpl(this._self, this._then);

  final _AirportModel _self;
  final $Res Function(_AirportModel) _then;

/// Create a copy of AirportModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? city = null,Object? country = null,Object? name = null,}) {
  return _then(_AirportModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
