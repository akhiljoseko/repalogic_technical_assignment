import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';

abstract interface class MessageRepository {
  Future<Result<List<Message>>> getMessagesByChatRoomId({
    required String chatRoomId,
  });

  Future<Result<Message>> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
    required String senderName,
  });

  Future<Result<Message?>> getLastMessageByChatRoomId({
    required String chatRoomId,
  });
}
