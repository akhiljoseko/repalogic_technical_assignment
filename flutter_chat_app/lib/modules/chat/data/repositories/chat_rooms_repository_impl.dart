import 'dart:async';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/chat_room_local_data_source.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';

class ChatRoomsRepositoryImpl implements ChatRoomsRepository {
  ChatRoomsRepositoryImpl({required this.chatRoomLocalDataSource});

  final ChatRoomLocalDataSource chatRoomLocalDataSource;
  final _chatRoomsStreamController = StreamController<void>.broadcast();

  @override
  Stream<void> watchChatRooms() => _chatRoomsStreamController.stream;

  @override
  Future<Result<ChatRoom>> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  }) async {
    try {
      final chatRoomModel = await chatRoomLocalDataSource.createChatRoom(
        roomName: roomName,
        participantIds: participantIds,
      );
      _chatRoomsStreamController.add(null);
      return Result.ok(chatRoomModel.toEntity());
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'create-chat-room-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Result<List<ChatRoom>>> getChatRoomsByUserId({
    required String userId,
  }) async {
    try {
      final chatRoomsModel = await chatRoomLocalDataSource.getChatRoomsByUserId(
        userId: userId,
      );
      final chatRooms = chatRoomsModel.map((e) => e.toEntity()).toList();
      return Result.ok(chatRooms);
    } on AppException catch (e) {
      return Result.error(e);
    } on Exception catch (e) {
      return Result.error(
        UnknownException(
          errorCode: 'get-chat-rooms-by-user-id-unknown-error',
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
