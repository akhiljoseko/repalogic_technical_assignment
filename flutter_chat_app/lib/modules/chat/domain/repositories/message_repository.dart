import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';

abstract interface class MessageRepository {
  Future<List<Message>> getMessagesByChatRoomId({
    required String chatRoomId,
  });

  Future<Message> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
  });

  Future<Result<Message>> getLastMessageByChatRoomId({
    required String chatRoomId,
  });
}
