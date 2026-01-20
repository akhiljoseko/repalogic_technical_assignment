// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_view_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatRoomViewItemModel {

 String get roomId; String get roomName; String? get lastMessage; DateTime? get lastMessageTime; String? get lastMessageSenderName;
/// Create a copy of ChatRoomViewItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomViewItemModelCopyWith<ChatRoomViewItemModel> get copyWith => _$ChatRoomViewItemModelCopyWithImpl<ChatRoomViewItemModel>(this as ChatRoomViewItemModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomViewItemModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastMessageSenderName, lastMessageSenderName) || other.lastMessageSenderName == lastMessageSenderName));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,lastMessage,lastMessageTime,lastMessageSenderName);

@override
String toString() {
  return 'ChatRoomViewItemModel(roomId: $roomId, roomName: $roomName, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastMessageSenderName: $lastMessageSenderName)';
}


}

/// @nodoc
abstract mixin class $ChatRoomViewItemModelCopyWith<$Res>  {
  factory $ChatRoomViewItemModelCopyWith(ChatRoomViewItemModel value, $Res Function(ChatRoomViewItemModel) _then) = _$ChatRoomViewItemModelCopyWithImpl;
@useResult
$Res call({
 String roomId, String roomName, String? lastMessage, DateTime? lastMessageTime, String? lastMessageSenderName
});




}
/// @nodoc
class _$ChatRoomViewItemModelCopyWithImpl<$Res>
    implements $ChatRoomViewItemModelCopyWith<$Res> {
  _$ChatRoomViewItemModelCopyWithImpl(this._self, this._then);

  final ChatRoomViewItemModel _self;
  final $Res Function(ChatRoomViewItemModel) _then;

/// Create a copy of ChatRoomViewItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomId = null,Object? roomName = null,Object? lastMessage = freezed,Object? lastMessageTime = freezed,Object? lastMessageSenderName = freezed,}) {
  return _then(_self.copyWith(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageTime: freezed == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageSenderName: freezed == lastMessageSenderName ? _self.lastMessageSenderName : lastMessageSenderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRoomViewItemModel].
extension ChatRoomViewItemModelPatterns on ChatRoomViewItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomViewItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomViewItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomViewItemModel value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomViewItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomViewItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomViewItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomId,  String roomName,  String? lastMessage,  DateTime? lastMessageTime,  String? lastMessageSenderName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomViewItemModel() when $default != null:
return $default(_that.roomId,_that.roomName,_that.lastMessage,_that.lastMessageTime,_that.lastMessageSenderName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomId,  String roomName,  String? lastMessage,  DateTime? lastMessageTime,  String? lastMessageSenderName)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomViewItemModel():
return $default(_that.roomId,_that.roomName,_that.lastMessage,_that.lastMessageTime,_that.lastMessageSenderName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomId,  String roomName,  String? lastMessage,  DateTime? lastMessageTime,  String? lastMessageSenderName)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomViewItemModel() when $default != null:
return $default(_that.roomId,_that.roomName,_that.lastMessage,_that.lastMessageTime,_that.lastMessageSenderName);case _:
  return null;

}
}

}

/// @nodoc


class _ChatRoomViewItemModel implements ChatRoomViewItemModel {
   _ChatRoomViewItemModel({required this.roomId, required this.roomName, this.lastMessage, this.lastMessageTime, this.lastMessageSenderName});
  

@override final  String roomId;
@override final  String roomName;
@override final  String? lastMessage;
@override final  DateTime? lastMessageTime;
@override final  String? lastMessageSenderName;

/// Create a copy of ChatRoomViewItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomViewItemModelCopyWith<_ChatRoomViewItemModel> get copyWith => __$ChatRoomViewItemModelCopyWithImpl<_ChatRoomViewItemModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomViewItemModel&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime)&&(identical(other.lastMessageSenderName, lastMessageSenderName) || other.lastMessageSenderName == lastMessageSenderName));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,roomName,lastMessage,lastMessageTime,lastMessageSenderName);

@override
String toString() {
  return 'ChatRoomViewItemModel(roomId: $roomId, roomName: $roomName, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, lastMessageSenderName: $lastMessageSenderName)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomViewItemModelCopyWith<$Res> implements $ChatRoomViewItemModelCopyWith<$Res> {
  factory _$ChatRoomViewItemModelCopyWith(_ChatRoomViewItemModel value, $Res Function(_ChatRoomViewItemModel) _then) = __$ChatRoomViewItemModelCopyWithImpl;
@override @useResult
$Res call({
 String roomId, String roomName, String? lastMessage, DateTime? lastMessageTime, String? lastMessageSenderName
});




}
/// @nodoc
class __$ChatRoomViewItemModelCopyWithImpl<$Res>
    implements _$ChatRoomViewItemModelCopyWith<$Res> {
  __$ChatRoomViewItemModelCopyWithImpl(this._self, this._then);

  final _ChatRoomViewItemModel _self;
  final $Res Function(_ChatRoomViewItemModel) _then;

/// Create a copy of ChatRoomViewItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? roomName = null,Object? lastMessage = freezed,Object? lastMessageTime = freezed,Object? lastMessageSenderName = freezed,}) {
  return _then(_ChatRoomViewItemModel(
roomId: null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageTime: freezed == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime?,lastMessageSenderName: freezed == lastMessageSenderName ? _self.lastMessageSenderName : lastMessageSenderName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
