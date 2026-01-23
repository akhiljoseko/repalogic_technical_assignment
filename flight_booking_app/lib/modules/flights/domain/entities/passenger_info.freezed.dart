// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PassengerInfo {

 String get name; String get passportNumber;
/// Create a copy of PassengerInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerInfoCopyWith<PassengerInfo> get copyWith => _$PassengerInfoCopyWithImpl<PassengerInfo>(this as PassengerInfo, _$identity);

  /// Serializes this PassengerInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,passportNumber);

@override
String toString() {
  return 'PassengerInfo(name: $name, passportNumber: $passportNumber)';
}


}

/// @nodoc
abstract mixin class $PassengerInfoCopyWith<$Res>  {
  factory $PassengerInfoCopyWith(PassengerInfo value, $Res Function(PassengerInfo) _then) = _$PassengerInfoCopyWithImpl;
@useResult
$Res call({
 String name, String passportNumber
});




}
/// @nodoc
class _$PassengerInfoCopyWithImpl<$Res>
    implements $PassengerInfoCopyWith<$Res> {
  _$PassengerInfoCopyWithImpl(this._self, this._then);

  final PassengerInfo _self;
  final $Res Function(PassengerInfo) _then;

/// Create a copy of PassengerInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? passportNumber = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,passportNumber: null == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerInfo].
extension PassengerInfoPatterns on PassengerInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerInfo value)  $default,){
final _that = this;
switch (_that) {
case _PassengerInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerInfo value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String passportNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PassengerInfo() when $default != null:
return $default(_that.name,_that.passportNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String passportNumber)  $default,) {final _that = this;
switch (_that) {
case _PassengerInfo():
return $default(_that.name,_that.passportNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String passportNumber)?  $default,) {final _that = this;
switch (_that) {
case _PassengerInfo() when $default != null:
return $default(_that.name,_that.passportNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PassengerInfo implements PassengerInfo {
  const _PassengerInfo({required this.name, required this.passportNumber});
  factory _PassengerInfo.fromJson(Map<String, dynamic> json) => _$PassengerInfoFromJson(json);

@override final  String name;
@override final  String passportNumber;

/// Create a copy of PassengerInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerInfoCopyWith<_PassengerInfo> get copyWith => __$PassengerInfoCopyWithImpl<_PassengerInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PassengerInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,passportNumber);

@override
String toString() {
  return 'PassengerInfo(name: $name, passportNumber: $passportNumber)';
}


}

/// @nodoc
abstract mixin class _$PassengerInfoCopyWith<$Res> implements $PassengerInfoCopyWith<$Res> {
  factory _$PassengerInfoCopyWith(_PassengerInfo value, $Res Function(_PassengerInfo) _then) = __$PassengerInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, String passportNumber
});




}
/// @nodoc
class __$PassengerInfoCopyWithImpl<$Res>
    implements _$PassengerInfoCopyWith<$Res> {
  __$PassengerInfoCopyWithImpl(this._self, this._then);

  final _PassengerInfo _self;
  final $Res Function(_PassengerInfo) _then;

/// Create a copy of PassengerInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? passportNumber = null,}) {
  return _then(_PassengerInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,passportNumber: null == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
