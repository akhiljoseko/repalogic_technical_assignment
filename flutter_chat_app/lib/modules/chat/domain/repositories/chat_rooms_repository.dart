import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';

abstract interface class ChatRoomsRepository {
  Future<Result<List<ChatRoom>>> getChatRoomsByUserId({
    required String userId,
  });

  Future<Result<ChatRoom>> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  });

  Stream<void> watchChatRooms();
}
