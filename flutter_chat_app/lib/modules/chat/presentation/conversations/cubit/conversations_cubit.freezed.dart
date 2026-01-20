// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConversationsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConversationsState()';
}


}

/// @nodoc
class $ConversationsStateCopyWith<$Res>  {
$ConversationsStateCopyWith(ConversationsState _, $Res Function(ConversationsState) __);
}


/// Adds pattern-matching-related methods to [ConversationsState].
extension ConversationsStatePatterns on ConversationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ConversationsInitial value)?  initial,TResult Function( ConversationsLoading value)?  loading,TResult Function( ConversationsLoadSuccess value)?  success,TResult Function( ConversationsLoadFailure value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ConversationsInitial() when initial != null:
return initial(_that);case ConversationsLoading() when loading != null:
return loading(_that);case ConversationsLoadSuccess() when success != null:
return success(_that);case ConversationsLoadFailure() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ConversationsInitial value)  initial,required TResult Function( ConversationsLoading value)  loading,required TResult Function( ConversationsLoadSuccess value)  success,required TResult Function( ConversationsLoadFailure value)  error,}){
final _that = this;
switch (_that) {
case ConversationsInitial():
return initial(_that);case ConversationsLoading():
return loading(_that);case ConversationsLoadSuccess():
return success(_that);case ConversationsLoadFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ConversationsInitial value)?  initial,TResult? Function( ConversationsLoading value)?  loading,TResult? Function( ConversationsLoadSuccess value)?  success,TResult? Function( ConversationsLoadFailure value)?  error,}){
final _that = this;
switch (_that) {
case ConversationsInitial() when initial != null:
return initial(_that);case ConversationsLoading() when loading != null:
return loading(_that);case ConversationsLoadSuccess() when success != null:
return success(_that);case ConversationsLoadFailure() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatRoomViewItemModel> chatRooms)?  success,TResult Function( AppException error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ConversationsInitial() when initial != null:
return initial();case ConversationsLoading() when loading != null:
return loading();case ConversationsLoadSuccess() when success != null:
return success(_that.chatRooms);case ConversationsLoadFailure() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatRoomViewItemModel> chatRooms)  success,required TResult Function( AppException error)  error,}) {final _that = this;
switch (_that) {
case ConversationsInitial():
return initial();case ConversationsLoading():
return loading();case ConversationsLoadSuccess():
return success(_that.chatRooms);case ConversationsLoadFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatRoomViewItemModel> chatRooms)?  success,TResult? Function( AppException error)?  error,}) {final _that = this;
switch (_that) {
case ConversationsInitial() when initial != null:
return initial();case ConversationsLoading() when loading != null:
return loading();case ConversationsLoadSuccess() when success != null:
return success(_that.chatRooms);case ConversationsLoadFailure() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ConversationsInitial implements ConversationsState {
  const ConversationsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConversationsState.initial()';
}


}




/// @nodoc


class ConversationsLoading implements ConversationsState {
  const ConversationsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConversationsState.loading()';
}


}




/// @nodoc


class ConversationsLoadSuccess implements ConversationsState {
  const ConversationsLoadSuccess(final  List<ChatRoomViewItemModel> chatRooms): _chatRooms = chatRooms;
  

 final  List<ChatRoomViewItemModel> _chatRooms;
 List<ChatRoomViewItemModel> get chatRooms {
  if (_chatRooms is EqualUnmodifiableListView) return _chatRooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatRooms);
}


/// Create a copy of ConversationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsLoadSuccessCopyWith<ConversationsLoadSuccess> get copyWith => _$ConversationsLoadSuccessCopyWithImpl<ConversationsLoadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsLoadSuccess&&const DeepCollectionEquality().equals(other._chatRooms, _chatRooms));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatRooms));

@override
String toString() {
  return 'ConversationsState.success(chatRooms: $chatRooms)';
}


}

/// @nodoc
abstract mixin class $ConversationsLoadSuccessCopyWith<$Res> implements $ConversationsStateCopyWith<$Res> {
  factory $ConversationsLoadSuccessCopyWith(ConversationsLoadSuccess value, $Res Function(ConversationsLoadSuccess) _then) = _$ConversationsLoadSuccessCopyWithImpl;
@useResult
$Res call({
 List<ChatRoomViewItemModel> chatRooms
});




}
/// @nodoc
class _$ConversationsLoadSuccessCopyWithImpl<$Res>
    implements $ConversationsLoadSuccessCopyWith<$Res> {
  _$ConversationsLoadSuccessCopyWithImpl(this._self, this._then);

  final ConversationsLoadSuccess _self;
  final $Res Function(ConversationsLoadSuccess) _then;

/// Create a copy of ConversationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatRooms = null,}) {
  return _then(ConversationsLoadSuccess(
null == chatRooms ? _self._chatRooms : chatRooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoomViewItemModel>,
  ));
}


}

/// @nodoc


class ConversationsLoadFailure implements ConversationsState {
  const ConversationsLoadFailure(this.error);
  

 final  AppException error;

/// Create a copy of ConversationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsLoadFailureCopyWith<ConversationsLoadFailure> get copyWith => _$ConversationsLoadFailureCopyWithImpl<ConversationsLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsLoadFailure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ConversationsState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ConversationsLoadFailureCopyWith<$Res> implements $ConversationsStateCopyWith<$Res> {
  factory $ConversationsLoadFailureCopyWith(ConversationsLoadFailure value, $Res Function(ConversationsLoadFailure) _then) = _$ConversationsLoadFailureCopyWithImpl;
@useResult
$Res call({
 AppException error
});




}
/// @nodoc
class _$ConversationsLoadFailureCopyWithImpl<$Res>
    implements $ConversationsLoadFailureCopyWith<$Res> {
  _$ConversationsLoadFailureCopyWithImpl(this._self, this._then);

  final ConversationsLoadFailure _self;
  final $Res Function(ConversationsLoadFailure) _then;

/// Create a copy of ConversationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ConversationsLoadFailure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppException,
  ));
}


}

// dart format on
