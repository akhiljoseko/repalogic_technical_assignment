// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passenger_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PassengerModel {

 String get name; String get passportNumber;
/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PassengerModelCopyWith<PassengerModel> get copyWith => _$PassengerModelCopyWithImpl<PassengerModel>(this as PassengerModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PassengerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber));
}


@override
int get hashCode => Object.hash(runtimeType,name,passportNumber);

@override
String toString() {
  return 'PassengerModel(name: $name, passportNumber: $passportNumber)';
}


}

/// @nodoc
abstract mixin class $PassengerModelCopyWith<$Res>  {
  factory $PassengerModelCopyWith(PassengerModel value, $Res Function(PassengerModel) _then) = _$PassengerModelCopyWithImpl;
@useResult
$Res call({
 String name, String passportNumber
});




}
/// @nodoc
class _$PassengerModelCopyWithImpl<$Res>
    implements $PassengerModelCopyWith<$Res> {
  _$PassengerModelCopyWithImpl(this._self, this._then);

  final PassengerModel _self;
  final $Res Function(PassengerModel) _then;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? passportNumber = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,passportNumber: null == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PassengerModel].
extension PassengerModelPatterns on PassengerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PassengerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PassengerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PassengerModel value)  $default,){
final _that = this;
switch (_that) {
case _PassengerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PassengerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PassengerModel() when $default != null:
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
case _PassengerModel() when $default != null:
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
case _PassengerModel():
return $default(_that.name,_that.passportNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String passportNumber)?  $default,) {final _that = this;
switch (_that) {
case _PassengerModel() when $default != null:
return $default(_that.name,_that.passportNumber);case _:
  return null;

}
}

}

/// @nodoc


class _PassengerModel extends PassengerModel {
  const _PassengerModel({required this.name, required this.passportNumber}): super._();
  

@override final  String name;
@override final  String passportNumber;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PassengerModelCopyWith<_PassengerModel> get copyWith => __$PassengerModelCopyWithImpl<_PassengerModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PassengerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.passportNumber, passportNumber) || other.passportNumber == passportNumber));
}


@override
int get hashCode => Object.hash(runtimeType,name,passportNumber);

@override
String toString() {
  return 'PassengerModel(name: $name, passportNumber: $passportNumber)';
}


}

/// @nodoc
abstract mixin class _$PassengerModelCopyWith<$Res> implements $PassengerModelCopyWith<$Res> {
  factory _$PassengerModelCopyWith(_PassengerModel value, $Res Function(_PassengerModel) _then) = __$PassengerModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String passportNumber
});




}
/// @nodoc
class __$PassengerModelCopyWithImpl<$Res>
    implements _$PassengerModelCopyWith<$Res> {
  __$PassengerModelCopyWithImpl(this._self, this._then);

  final _PassengerModel _self;
  final $Res Function(_PassengerModel) _then;

/// Create a copy of PassengerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? passportNumber = null,}) {
  return _then(_PassengerModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,passportNumber: null == passportNumber ? _self.passportNumber : passportNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
