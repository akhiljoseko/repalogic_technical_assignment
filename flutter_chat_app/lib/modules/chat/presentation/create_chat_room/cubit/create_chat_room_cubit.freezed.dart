// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_room_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateChatRoomState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateChatRoomState()';
}


}

/// @nodoc
class $CreateChatRoomStateCopyWith<$Res>  {
$CreateChatRoomStateCopyWith(CreateChatRoomState _, $Res Function(CreateChatRoomState) __);
}


/// Adds pattern-matching-related methods to [CreateChatRoomState].
extension CreateChatRoomStatePatterns on CreateChatRoomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateChatRoomStateLoadingInitialData value)?  loadingInitialData,TResult Function( CreateChatRoomStateLoadingInitialDataSuccess value)?  loadingInitialDataSuccess,TResult Function( CreateChatRoomStateCreatingChatRoom value)?  creatingChatRoom,TResult Function( CreateChatRoomStateChatRoomCreated value)?  chatRoomCreated,TResult Function( CreateChatRoomStateChatRoomCreationFailed value)?  chatRoomCreationFailed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData() when loadingInitialData != null:
return loadingInitialData(_that);case CreateChatRoomStateLoadingInitialDataSuccess() when loadingInitialDataSuccess != null:
return loadingInitialDataSuccess(_that);case CreateChatRoomStateCreatingChatRoom() when creatingChatRoom != null:
return creatingChatRoom(_that);case CreateChatRoomStateChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that);case CreateChatRoomStateChatRoomCreationFailed() when chatRoomCreationFailed != null:
return chatRoomCreationFailed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateChatRoomStateLoadingInitialData value)  loadingInitialData,required TResult Function( CreateChatRoomStateLoadingInitialDataSuccess value)  loadingInitialDataSuccess,required TResult Function( CreateChatRoomStateCreatingChatRoom value)  creatingChatRoom,required TResult Function( CreateChatRoomStateChatRoomCreated value)  chatRoomCreated,required TResult Function( CreateChatRoomStateChatRoomCreationFailed value)  chatRoomCreationFailed,}){
final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData():
return loadingInitialData(_that);case CreateChatRoomStateLoadingInitialDataSuccess():
return loadingInitialDataSuccess(_that);case CreateChatRoomStateCreatingChatRoom():
return creatingChatRoom(_that);case CreateChatRoomStateChatRoomCreated():
return chatRoomCreated(_that);case CreateChatRoomStateChatRoomCreationFailed():
return chatRoomCreationFailed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateChatRoomStateLoadingInitialData value)?  loadingInitialData,TResult? Function( CreateChatRoomStateLoadingInitialDataSuccess value)?  loadingInitialDataSuccess,TResult? Function( CreateChatRoomStateCreatingChatRoom value)?  creatingChatRoom,TResult? Function( CreateChatRoomStateChatRoomCreated value)?  chatRoomCreated,TResult? Function( CreateChatRoomStateChatRoomCreationFailed value)?  chatRoomCreationFailed,}){
final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData() when loadingInitialData != null:
return loadingInitialData(_that);case CreateChatRoomStateLoadingInitialDataSuccess() when loadingInitialDataSuccess != null:
return loadingInitialDataSuccess(_that);case CreateChatRoomStateCreatingChatRoom() when creatingChatRoom != null:
return creatingChatRoom(_that);case CreateChatRoomStateChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated(_that);case CreateChatRoomStateChatRoomCreationFailed() when chatRoomCreationFailed != null:
return chatRoomCreationFailed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadingInitialData,TResult Function( List<User> users,  List<User> selectedUsers)?  loadingInitialDataSuccess,TResult Function()?  creatingChatRoom,TResult Function()?  chatRoomCreated,TResult Function( AppException error)?  chatRoomCreationFailed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData() when loadingInitialData != null:
return loadingInitialData();case CreateChatRoomStateLoadingInitialDataSuccess() when loadingInitialDataSuccess != null:
return loadingInitialDataSuccess(_that.users,_that.selectedUsers);case CreateChatRoomStateCreatingChatRoom() when creatingChatRoom != null:
return creatingChatRoom();case CreateChatRoomStateChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated();case CreateChatRoomStateChatRoomCreationFailed() when chatRoomCreationFailed != null:
return chatRoomCreationFailed(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadingInitialData,required TResult Function( List<User> users,  List<User> selectedUsers)  loadingInitialDataSuccess,required TResult Function()  creatingChatRoom,required TResult Function()  chatRoomCreated,required TResult Function( AppException error)  chatRoomCreationFailed,}) {final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData():
return loadingInitialData();case CreateChatRoomStateLoadingInitialDataSuccess():
return loadingInitialDataSuccess(_that.users,_that.selectedUsers);case CreateChatRoomStateCreatingChatRoom():
return creatingChatRoom();case CreateChatRoomStateChatRoomCreated():
return chatRoomCreated();case CreateChatRoomStateChatRoomCreationFailed():
return chatRoomCreationFailed(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadingInitialData,TResult? Function( List<User> users,  List<User> selectedUsers)?  loadingInitialDataSuccess,TResult? Function()?  creatingChatRoom,TResult? Function()?  chatRoomCreated,TResult? Function( AppException error)?  chatRoomCreationFailed,}) {final _that = this;
switch (_that) {
case CreateChatRoomStateLoadingInitialData() when loadingInitialData != null:
return loadingInitialData();case CreateChatRoomStateLoadingInitialDataSuccess() when loadingInitialDataSuccess != null:
return loadingInitialDataSuccess(_that.users,_that.selectedUsers);case CreateChatRoomStateCreatingChatRoom() when creatingChatRoom != null:
return creatingChatRoom();case CreateChatRoomStateChatRoomCreated() when chatRoomCreated != null:
return chatRoomCreated();case CreateChatRoomStateChatRoomCreationFailed() when chatRoomCreationFailed != null:
return chatRoomCreationFailed(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class CreateChatRoomStateLoadingInitialData implements CreateChatRoomState {
  const CreateChatRoomStateLoadingInitialData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomStateLoadingInitialData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateChatRoomState.loadingInitialData()';
}


}




/// @nodoc


class CreateChatRoomStateLoadingInitialDataSuccess implements CreateChatRoomState {
  const CreateChatRoomStateLoadingInitialDataSuccess({required final  List<User> users, final  List<User> selectedUsers = const []}): _users = users,_selectedUsers = selectedUsers;
  

 final  List<User> _users;
 List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

 final  List<User> _selectedUsers;
@JsonKey() List<User> get selectedUsers {
  if (_selectedUsers is EqualUnmodifiableListView) return _selectedUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedUsers);
}


/// Create a copy of CreateChatRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChatRoomStateLoadingInitialDataSuccessCopyWith<CreateChatRoomStateLoadingInitialDataSuccess> get copyWith => _$CreateChatRoomStateLoadingInitialDataSuccessCopyWithImpl<CreateChatRoomStateLoadingInitialDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomStateLoadingInitialDataSuccess&&const DeepCollectionEquality().equals(other._users, _users)&&const DeepCollectionEquality().equals(other._selectedUsers, _selectedUsers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),const DeepCollectionEquality().hash(_selectedUsers));

@override
String toString() {
  return 'CreateChatRoomState.loadingInitialDataSuccess(users: $users, selectedUsers: $selectedUsers)';
}


}

/// @nodoc
abstract mixin class $CreateChatRoomStateLoadingInitialDataSuccessCopyWith<$Res> implements $CreateChatRoomStateCopyWith<$Res> {
  factory $CreateChatRoomStateLoadingInitialDataSuccessCopyWith(CreateChatRoomStateLoadingInitialDataSuccess value, $Res Function(CreateChatRoomStateLoadingInitialDataSuccess) _then) = _$CreateChatRoomStateLoadingInitialDataSuccessCopyWithImpl;
@useResult
$Res call({
 List<User> users, List<User> selectedUsers
});




}
/// @nodoc
class _$CreateChatRoomStateLoadingInitialDataSuccessCopyWithImpl<$Res>
    implements $CreateChatRoomStateLoadingInitialDataSuccessCopyWith<$Res> {
  _$CreateChatRoomStateLoadingInitialDataSuccessCopyWithImpl(this._self, this._then);

  final CreateChatRoomStateLoadingInitialDataSuccess _self;
  final $Res Function(CreateChatRoomStateLoadingInitialDataSuccess) _then;

/// Create a copy of CreateChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,Object? selectedUsers = null,}) {
  return _then(CreateChatRoomStateLoadingInitialDataSuccess(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,selectedUsers: null == selectedUsers ? _self._selectedUsers : selectedUsers // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

/// @nodoc


class CreateChatRoomStateCreatingChatRoom implements CreateChatRoomState {
  const CreateChatRoomStateCreatingChatRoom();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomStateCreatingChatRoom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateChatRoomState.creatingChatRoom()';
}


}




/// @nodoc


class CreateChatRoomStateChatRoomCreated implements CreateChatRoomState {
  const CreateChatRoomStateChatRoomCreated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomStateChatRoomCreated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateChatRoomState.chatRoomCreated()';
}


}




/// @nodoc


class CreateChatRoomStateChatRoomCreationFailed implements CreateChatRoomState {
  const CreateChatRoomStateChatRoomCreationFailed(this.error);
  

 final  AppException error;

/// Create a copy of CreateChatRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateChatRoomStateChatRoomCreationFailedCopyWith<CreateChatRoomStateChatRoomCreationFailed> get copyWith => _$CreateChatRoomStateChatRoomCreationFailedCopyWithImpl<CreateChatRoomStateChatRoomCreationFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateChatRoomStateChatRoomCreationFailed&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CreateChatRoomState.chatRoomCreationFailed(error: $error)';
}


}

/// @nodoc
abstract mixin class $CreateChatRoomStateChatRoomCreationFailedCopyWith<$Res> implements $CreateChatRoomStateCopyWith<$Res> {
  factory $CreateChatRoomStateChatRoomCreationFailedCopyWith(CreateChatRoomStateChatRoomCreationFailed value, $Res Function(CreateChatRoomStateChatRoomCreationFailed) _then) = _$CreateChatRoomStateChatRoomCreationFailedCopyWithImpl;
@useResult
$Res call({
 AppException error
});




}
/// @nodoc
class _$CreateChatRoomStateChatRoomCreationFailedCopyWithImpl<$Res>
    implements $CreateChatRoomStateChatRoomCreationFailedCopyWith<$Res> {
  _$CreateChatRoomStateChatRoomCreationFailedCopyWithImpl(this._self, this._then);

  final CreateChatRoomStateChatRoomCreationFailed _self;
  final $Res Function(CreateChatRoomStateChatRoomCreationFailed) _then;

/// Create a copy of CreateChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(CreateChatRoomStateChatRoomCreationFailed(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

// dart format on
