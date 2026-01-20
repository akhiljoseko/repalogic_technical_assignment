import 'package:flutter_chat_app/core/services/local_database.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/chat_room_local_data_source.dart';
import 'package:flutter_chat_app/modules/chat/data/models/chat_room_model.dart';
import 'package:uuid/uuid.dart';

class ChatRoomLocalDataSourceImpl implements ChatRoomLocalDataSource {
  ChatRoomLocalDataSourceImpl({required this.chatRoomsDatabase});

  final LocalDatabase<ChatRoomModel> chatRoomsDatabase;

  @override
  Future<ChatRoomModel> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  }) async {
    final model = ChatRoomModel(
      id: const Uuid().v4(),
      participantIds: participantIds,
      name: roomName,
      createdAt: DateTime.now(),
    );
    await chatRoomsDatabase.insert(model.id, model);
    return model;
  }

  @override
  Future<List<ChatRoomModel>> getChatRoomsByUserId({
    required String userId,
  }) async {
    final chatRooms = await chatRoomsDatabase.findAll();

    return chatRooms
        .where((chatRoom) => chatRoom.participantIds.contains(userId))
        .toList();
  }
}
