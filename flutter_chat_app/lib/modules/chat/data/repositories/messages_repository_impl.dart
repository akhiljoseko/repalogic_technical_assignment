import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/message_local_data_source.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';

class MessagesRepositoryImpl implements MessageRepository {
  MessagesRepositoryImpl({required this.messageLocalDataSource});

  final MessageLocalDataSource messageLocalDataSource;

  @override
  Future<Result<Message>> createMessage({
    required String chatRoomId,
    required String content,
    required String senderId,
    required String senderName,
  }) async {
    try {
      final message = await messageLocalDataSource.createMessage(
        chatRoomId: chatRoomId,
        content: content,
        senderId: senderId,
        senderName: senderName,
      );
      return Result.ok(message.toEntity());
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'create-message-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<Message?>> getLastMessageByChatRoomId({
    required String chatRoomId,
  }) async {
    try {
      final message = await messageLocalDataSource.getLastMessageByChatRoomId(
        chatRoomId: chatRoomId,
      );
      return Result.ok(message?.toEntity());
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'get-last-message-by-chat-room-id-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<List<Message>>> getMessagesByChatRoomId({
    required String chatRoomId,
  }) async {
    try {
      final messages = await messageLocalDataSource.getMessagesByChatRoomId(
        chatRoomId: chatRoomId,
      );
      return Result.ok(messages.map((e) => e.toEntity()).toList());
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'get-messages-by-chat-room-id-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
