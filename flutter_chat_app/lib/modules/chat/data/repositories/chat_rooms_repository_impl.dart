import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';

class ChatRoomsRepositoryImpl implements ChatRoomsRepository {
  @override
  Future<Result<ChatRoom>> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  }) {
    // TODO: implement createChatRoom
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ChatRoom>>> getChatRoomsByUserId({
    required String userId,
  }) {
    // TODO: implement getChatRoomsByUserId
    throw UnimplementedError();
  }
}
