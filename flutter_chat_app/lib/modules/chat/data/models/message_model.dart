import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
sealed class MessageModel with _$MessageModel {
  factory MessageModel({
    required String id,
    required String content,
    required String senderId,
    required String senderName,
    required String roomId,
    required DateTime timestamp,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  const MessageModel._();

  Message toEntity() {
    return Message(
      id: id,
      content: content,
      senderId: senderId,
      senderName: senderName,
      roomId: roomId,
      timestamp: timestamp,
    );
  }
}
