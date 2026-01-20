import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_view_item_model.freezed.dart';

@freezed
sealed class ChatRoomViewItemModel with _$ChatRoomViewItemModel {
  factory ChatRoomViewItemModel({
    required String roomId,
    required String roomName,
    String? lastMessage,
    DateTime? lastMessageTime,
    String? lastMessageSenderName,
  }) = _ChatRoomViewItemModel;
}
