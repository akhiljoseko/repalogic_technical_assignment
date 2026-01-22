import 'package:flutter_chat_app/core/services/local_database.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/chat_room_local_data_source.dart';
import 'package:flutter_chat_app/modules/chat/data/models/chat_room_model.dart';
import 'package:uuid/uuid.dart';

/// Implementation of [ChatRoomLocalDataSource] using [LocalDatabase].
///
/// Manages the storage and retrieval of chat rooms in the local database.
class ChatRoomLocalDataSourceImpl implements ChatRoomLocalDataSource {
  ChatRoomLocalDataSourceImpl({required this.chatRoomsDatabase});

  final LocalDatabase<ChatRoomModel> chatRoomsDatabase;

  @override
  Future<ChatRoomModel> createChatRoom({
    required String roomName,
    required List<String> participantIds,
  }) async {
    // Create a new chat room model with a unique ID and current timestamp.
    final model = ChatRoomModel(
      id: const Uuid().v4(),
      participantIds: participantIds,
      name: roomName,
      createdAt: DateTime.now(),
    );
    // Persist the chat room to the database.
    await chatRoomsDatabase.insert(model.id, model);
    return model;
  }

  @override
  Future<List<ChatRoomModel>> getChatRoomsByUserId({
    required String userId,
  }) async {
    // Retrieve all chat rooms and filter by the participant ID.
    final chatRooms = await chatRoomsDatabase.findAll();

    return chatRooms
        .where((chatRoom) => chatRoom.participantIds.contains(userId))
        .toList();
  }
}
