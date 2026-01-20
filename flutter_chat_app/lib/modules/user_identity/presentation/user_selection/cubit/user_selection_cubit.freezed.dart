// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_selection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSelectionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSelectionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSelectionState()';
}


}

/// @nodoc
class $UserSelectionStateCopyWith<$Res>  {
$UserSelectionStateCopyWith(UserSelectionState _, $Res Function(UserSelectionState) __);
}


/// Adds pattern-matching-related methods to [UserSelectionState].
extension UserSelectionStatePatterns on UserSelectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( UsersLoading value)?  loading,TResult Function( UsersLoadSuccess value)?  loaded,TResult Function( UsersLoadError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UsersLoading() when loading != null:
return loading(_that);case UsersLoadSuccess() when loaded != null:
return loaded(_that);case UsersLoadError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( UsersLoading value)  loading,required TResult Function( UsersLoadSuccess value)  loaded,required TResult Function( UsersLoadError value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case UsersLoading():
return loading(_that);case UsersLoadSuccess():
return loaded(_that);case UsersLoadError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( UsersLoading value)?  loading,TResult? Function( UsersLoadSuccess value)?  loaded,TResult? Function( UsersLoadError value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case UsersLoading() when loading != null:
return loading(_that);case UsersLoadSuccess() when loaded != null:
return loaded(_that);case UsersLoadError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<User> users)?  loaded,TResult Function( AppException error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UsersLoading() when loading != null:
return loading();case UsersLoadSuccess() when loaded != null:
return loaded(_that.users);case UsersLoadError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<User> users)  loaded,required TResult Function( AppException error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case UsersLoading():
return loading();case UsersLoadSuccess():
return loaded(_that.users);case UsersLoadError():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<User> users)?  loaded,TResult? Function( AppException error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case UsersLoading() when loading != null:
return loading();case UsersLoadSuccess() when loaded != null:
return loaded(_that.users);case UsersLoadError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserSelectionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSelectionState.initial()';
}


}




/// @nodoc


class UsersLoading implements UserSelectionState {
  const UsersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserSelectionState.loading()';
}


}




/// @nodoc


class UsersLoadSuccess implements UserSelectionState {
  const UsersLoadSuccess(final  List<User> users): _users = users;
  

 final  List<User> _users;
 List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserSelectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersLoadSuccessCopyWith<UsersLoadSuccess> get copyWith => _$UsersLoadSuccessCopyWithImpl<UsersLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersLoadSuccess&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserSelectionState.loaded(users: $users)';
}


}

/// @nodoc
abstract mixin class $UsersLoadSuccessCopyWith<$Res> implements $UserSelectionStateCopyWith<$Res> {
  factory $UsersLoadSuccessCopyWith(UsersLoadSuccess value, $Res Function(UsersLoadSuccess) _then) = _$UsersLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class _$UsersLoadSuccessCopyWithImpl<$Res>
    implements $UsersLoadSuccessCopyWith<$Res> {
  _$UsersLoadSuccessCopyWithImpl(this._self, this._then);

  final UsersLoadSuccess _self;
  final $Res Function(UsersLoadSuccess) _then;

/// Create a copy of UserSelectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(UsersLoadSuccess(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class UsersLoadError implements UserSelectionState {
  const UsersLoadError(this.error);
  

 final  AppException error;

/// Create a copy of UserSelectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersLoadErrorCopyWith<UsersLoadError> get copyWith => _$UsersLoadErrorCopyWithImpl<UsersLoadError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersLoadError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UserSelectionState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UsersLoadErrorCopyWith<$Res> implements $UserSelectionStateCopyWith<$Res> {
  factory $UsersLoadErrorCopyWith(UsersLoadError value, $Res Function(UsersLoadError) _then) = _$UsersLoadErrorCopyWithImpl;
@useResult
$Res call({
 AppException error
});




}
/// @nodoc
class _$UsersLoadErrorCopyWithImpl<$Res>
    implements $UsersLoadErrorCopyWith<$Res> {
  _$UsersLoadErrorCopyWithImpl(this._self, this._then);

  final UsersLoadError _self;
  final $Res Function(UsersLoadError) _then;

/// Create a copy of UserSelectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UsersLoadError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

// dart format on
