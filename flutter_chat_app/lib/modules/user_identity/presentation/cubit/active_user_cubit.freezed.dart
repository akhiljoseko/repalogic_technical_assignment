// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActiveUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActiveUserState()';
}


}

/// @nodoc
class $ActiveUserStateCopyWith<$Res>  {
$ActiveUserStateCopyWith(ActiveUserState _, $Res Function(ActiveUserState) __);
}


/// Adds pattern-matching-related methods to [ActiveUserState].
extension ActiveUserStatePatterns on ActiveUserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( UsersLoading value)?  loading,TResult Function( UsersLoadSuccess value)?  success,TResult Function( UsersLoadError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case UsersLoading() when loading != null:
return loading(_that);case UsersLoadSuccess() when success != null:
return success(_that);case UsersLoadError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( UsersLoading value)  loading,required TResult Function( UsersLoadSuccess value)  success,required TResult Function( UsersLoadError value)  error,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case UsersLoading():
return loading(_that);case UsersLoadSuccess():
return success(_that);case UsersLoadError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( UsersLoading value)?  loading,TResult? Function( UsersLoadSuccess value)?  success,TResult? Function( UsersLoadError value)?  error,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case UsersLoading() when loading != null:
return loading(_that);case UsersLoadSuccess() when success != null:
return success(_that);case UsersLoadError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<User>? users,  User? selectedUser)?  success,TResult Function( AppException error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case UsersLoading() when loading != null:
return loading();case UsersLoadSuccess() when success != null:
return success(_that.users,_that.selectedUser);case UsersLoadError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<User>? users,  User? selectedUser)  success,required TResult Function( AppException error)  error,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case UsersLoading():
return loading();case UsersLoadSuccess():
return success(_that.users,_that.selectedUser);case UsersLoadError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<User>? users,  User? selectedUser)?  success,TResult? Function( AppException error)?  error,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case UsersLoading() when loading != null:
return loading();case UsersLoadSuccess() when success != null:
return success(_that.users,_that.selectedUser);case UsersLoadError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements ActiveUserState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActiveUserState.initial()';
}


}




/// @nodoc


class UsersLoading implements ActiveUserState {
  const UsersLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ActiveUserState.loading()';
}


}




/// @nodoc


class UsersLoadSuccess implements ActiveUserState {
  const UsersLoadSuccess({final  List<User>? users, this.selectedUser}): _users = users;
  

 final  List<User>? _users;
 List<User>? get users {
  final value = _users;
  if (value == null) return null;
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  User? selectedUser;

/// Create a copy of ActiveUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersLoadSuccessCopyWith<UsersLoadSuccess> get copyWith => _$UsersLoadSuccessCopyWithImpl<UsersLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersLoadSuccess&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.selectedUser, selectedUser) || other.selectedUser == selectedUser));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),selectedUser);

@override
String toString() {
  return 'ActiveUserState.success(users: $users, selectedUser: $selectedUser)';
}


}

/// @nodoc
abstract mixin class $UsersLoadSuccessCopyWith<$Res> implements $ActiveUserStateCopyWith<$Res> {
  factory $UsersLoadSuccessCopyWith(UsersLoadSuccess value, $Res Function(UsersLoadSuccess) _then) = _$UsersLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<User>? users, User? selectedUser
});


$UserCopyWith<$Res>? get selectedUser;

}
/// @nodoc
class _$UsersLoadSuccessCopyWithImpl<$Res>
    implements $UsersLoadSuccessCopyWith<$Res> {
  _$UsersLoadSuccessCopyWithImpl(this._self, this._then);

  final UsersLoadSuccess _self;
  final $Res Function(UsersLoadSuccess) _then;

/// Create a copy of ActiveUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = freezed,Object? selectedUser = freezed,}) {
  return _then(UsersLoadSuccess(
users: freezed == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>?,selectedUser: freezed == selectedUser ? _self.selectedUser : selectedUser // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of ActiveUserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get selectedUser {
    if (_self.selectedUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.selectedUser!, (value) {
    return _then(_self.copyWith(selectedUser: value));
  });
}
}

/// @nodoc


class UsersLoadError implements ActiveUserState {
  const UsersLoadError(this.error);
  

 final  AppException error;

/// Create a copy of ActiveUserState
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
  return 'ActiveUserState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UsersLoadErrorCopyWith<$Res> implements $ActiveUserStateCopyWith<$Res> {
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

/// Create a copy of ActiveUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UsersLoadError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

// dart format on
