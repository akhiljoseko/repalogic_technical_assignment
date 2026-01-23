// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AirlineModel {

 String get name; String get code;
/// Create a copy of AirlineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AirlineModelCopyWith<AirlineModel> get copyWith => _$AirlineModelCopyWithImpl<AirlineModel>(this as AirlineModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AirlineModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,name,code);

@override
String toString() {
  return 'AirlineModel(name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class $AirlineModelCopyWith<$Res>  {
  factory $AirlineModelCopyWith(AirlineModel value, $Res Function(AirlineModel) _then) = _$AirlineModelCopyWithImpl;
@useResult
$Res call({
 String name, String code
});




}
/// @nodoc
class _$AirlineModelCopyWithImpl<$Res>
    implements $AirlineModelCopyWith<$Res> {
  _$AirlineModelCopyWithImpl(this._self, this._then);

  final AirlineModel _self;
  final $Res Function(AirlineModel) _then;

/// Create a copy of AirlineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AirlineModel].
extension AirlineModelPatterns on AirlineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AirlineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AirlineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AirlineModel value)  $default,){
final _that = this;
switch (_that) {
case _AirlineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AirlineModel value)?  $default,){
final _that = this;
switch (_that) {
case _AirlineModel() when $default != null:
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
case _AirlineModel() when $default != null:
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
case _AirlineModel():
return $default(_that.name,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code)?  $default,) {final _that = this;
switch (_that) {
case _AirlineModel() when $default != null:
return $default(_that.name,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _AirlineModel extends AirlineModel {
  const _AirlineModel({required this.name, required this.code}): super._();
  

@override final  String name;
@override final  String code;

/// Create a copy of AirlineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AirlineModelCopyWith<_AirlineModel> get copyWith => __$AirlineModelCopyWithImpl<_AirlineModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AirlineModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,name,code);

@override
String toString() {
  return 'AirlineModel(name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AirlineModelCopyWith<$Res> implements $AirlineModelCopyWith<$Res> {
  factory _$AirlineModelCopyWith(_AirlineModel value, $Res Function(_AirlineModel) _then) = __$AirlineModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String code
});




}
/// @nodoc
class __$AirlineModelCopyWithImpl<$Res>
    implements _$AirlineModelCopyWith<$Res> {
  __$AirlineModelCopyWithImpl(this._self, this._then);

  final _AirlineModel _self;
  final $Res Function(_AirlineModel) _then;

/// Create a copy of AirlineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,}) {
  return _then(_AirlineModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
