import 'package:flutter_chat_app/modules/chat/data/models/message_model.dart';

abstract interface class MessageLocalDataSource {
  Future<MessageModel> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
    required String senderName,
  });

  Future<MessageModel?> getLastMessageByChatRoomId({
    required String chatRoomId,
  });

  Future<List<MessageModel>> getMessagesByChatRoomId({
    required String chatRoomId,
  });
}
