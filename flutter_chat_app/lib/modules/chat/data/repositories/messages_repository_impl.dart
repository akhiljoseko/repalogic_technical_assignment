import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';

class MessagesRepositoryImpl implements MessageRepository {
  @override
  Future<Message> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
  }) {
    // TODO: implement createMessage
    throw UnimplementedError();
  }

  @override
  Future<Result<Message>> getLastMessageByChatRoomId({
    required String chatRoomId,
  }) {
    // TODO: implement getLastMessageByChatRoomId
    throw UnimplementedError();
  }

  @override
  Future<List<Message>> getMessagesByChatRoomId({required String chatRoomId}) {
    // TODO: implement getMessagesByChatRoomId
    throw UnimplementedError();
  }
}
