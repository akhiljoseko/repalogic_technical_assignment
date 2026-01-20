import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_model.freezed.dart';
part 'chat_room_model.g.dart';

@freezed
sealed class ChatRoomModel with _$ChatRoomModel {
  factory ChatRoomModel({
    required String id,
    required String name,
    required List<String> participantIds,
    required DateTime createdAt,
  }) = _ChatRoomModel;

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);

  const ChatRoomModel._();

  ChatRoom toEntity() {
    return ChatRoom(
      id: id,
      name: name,
      participantIds: participantIds,
      createdAt: createdAt,
    );
  }
}
