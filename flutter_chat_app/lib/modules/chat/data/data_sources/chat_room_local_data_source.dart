import 'package:flutter_chat_app/modules/chat/data/models/chat_room_model.dart';

abstract interface class ChatRoomLocalDataSource {
  Future<ChatRoomModel> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  });

  Future<List<ChatRoomModel>> getChatRoomsByUserId({
    required String userId,
  });
}
