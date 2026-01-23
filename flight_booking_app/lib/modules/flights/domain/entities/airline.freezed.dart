// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Airline {

 String get name; String get code;
/// Create a copy of Airline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirlineCopyWith<Airline> get copyWith => _$AirlineCopyWithImpl<Airline>(this as Airline, _$identity);

  /// Serializes this Airline to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Airline&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code);

@override
String toString() {
  return 'Airline(name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class $AirlineCopyWith<$Res>  {
  factory $AirlineCopyWith(Airline value, $Res Function(Airline) _then) = _$AirlineCopyWithImpl;
@useResult
$Res call({
 String name, String code
});




}
/// @nodoc
class _$AirlineCopyWithImpl<$Res>
    implements $AirlineCopyWith<$Res> {
  _$AirlineCopyWithImpl(this._self, this._then);

  final Airline _self;
  final $Res Function(Airline) _then;

/// Create a copy of Airline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Airline].
extension AirlinePatterns on Airline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Airline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Airline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Airline value)  $default,){
final _that = this;
switch (_that) {
case _Airline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Airline value)?  $default,){
final _that = this;
switch (_that) {
case _Airline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Airline() when $default != null:
return $default(_that.name,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code)  $default,) {final _that = this;
switch (_that) {
case _Airline():
return $default(_that.name,_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code)?  $default,) {final _that = this;
switch (_that) {
case _Airline() when $default != null:
return $default(_that.name,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Airline implements Airline {
  const _Airline({required this.name, required this.code});
  factory _Airline.fromJson(Map<String, dynamic> json) => _$AirlineFromJson(json);

@override final  String name;
@override final  String code;

/// Create a copy of Airline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirlineCopyWith<_Airline> get copyWith => __$AirlineCopyWithImpl<_Airline>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AirlineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Airline&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code);

@override
String toString() {
  return 'Airline(name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AirlineCopyWith<$Res> implements $AirlineCopyWith<$Res> {
  factory _$AirlineCopyWith(_Airline value, $Res Function(_Airline) _then) = __$AirlineCopyWithImpl;
@override @useResult
$Res call({
 String name, String code
});




}
/// @nodoc
class __$AirlineCopyWithImpl<$Res>
    implements _$AirlineCopyWith<$Res> {
  __$AirlineCopyWithImpl(this._self, this._then);

  final _Airline _self;
  final $Res Function(_Airline) _then;

/// Create a copy of Airline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,}) {
  return _then(_Airline(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
