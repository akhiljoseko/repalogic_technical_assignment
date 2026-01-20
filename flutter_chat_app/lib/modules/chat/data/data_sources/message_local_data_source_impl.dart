import 'package:flutter_chat_app/core/services/local_database.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/message_local_data_source.dart';
import 'package:flutter_chat_app/modules/chat/data/models/message_model.dart';
import 'package:uuid/uuid.dart';

class MessageLocalDataSourceImpl implements MessageLocalDataSource {
  MessageLocalDataSourceImpl({required this.messagesDatabase});

  final LocalDatabase<MessageModel> messagesDatabase;

  @override
  Future<MessageModel> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
    required String senderName,
  }) async {
    final message = MessageModel(
      content: content,
      senderId: senderId,
      id: const Uuid().v4(),
      senderName: senderName,
      roomId: chatRoomId,
      timestamp: DateTime.now(),
    );
    await messagesDatabase.insert(message.id, message);
    return message;
  }

  @override
  Future<MessageModel> getLastMessageByChatRoomId({
    required String chatRoomId,
  }) async {
    final messages = await getMessagesByChatRoomId(chatRoomId: chatRoomId);
    return messages.last;
  }

  @override
  Future<List<MessageModel>> getMessagesByChatRoomId({
    required String chatRoomId,
  }) async {
    final messages = await messagesDatabase.findAll();
    final messagesByChatRoomId = messages
        .where((e) => e.roomId == chatRoomId)
        .toList();
    return messagesByChatRoomId..sort(
      (a, b) => a.timestamp.compareTo(b.timestamp),
    );
  }
}
