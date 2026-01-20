import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/view_models/chat_room_view_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversations_state.dart';
part 'conversations_cubit.freezed.dart';

class ConversationsCubit extends Cubit<ConversationsState> {
  ConversationsCubit({
    required ChatRoomsRepository chatRoomsRepository,
    required MessageRepository messageRepository,
    required String activeUserId,
  }) : _chatRoomsRepository = chatRoomsRepository,
       _messageRepository = messageRepository,
       _activeUserId = activeUserId,
       super(const ConversationsState.initial());

  final ChatRoomsRepository _chatRoomsRepository;
  final MessageRepository _messageRepository;
  String _activeUserId;

  void updateActiveUserId(String activeUserId) {
    _activeUserId = activeUserId;
    emit(const ConversationsState.initial());
    loadConversations();
  }

  Future<void> loadConversations() async {
    emit(const ConversationsState.loading());

    final chatRoomsResult = await _chatRoomsRepository.getChatRoomsByUserId(
      userId: _activeUserId,
    );

    switch (chatRoomsResult) {
      case Ok<List<ChatRoom>>():
        final chatRooms = chatRoomsResult.value;
        final chatRoomSummaries = await _getRoomSummary(chatRooms);
        emit(ConversationsState.success(chatRoomSummaries));
      case Error<List<ChatRoom>>():
        emit(ConversationsState.error(chatRoomsResult.error));
    }
  }

  Future<List<ChatRoomViewItemModel>> _getRoomSummary(
    List<ChatRoom> chatRooms,
  ) async {
    final chatRoomSummaries = <ChatRoomViewItemModel>[];

    for (final chatRoom in chatRooms) {
      final lastMessageResult = await _messageRepository
          .getLastMessageByChatRoomId(
            chatRoomId: chatRoom.id,
          );

      switch (lastMessageResult) {
        case Ok<Message?>():
          final lastMessage = lastMessageResult.value;
          chatRoomSummaries.add(
            ChatRoomViewItemModel(
              roomId: chatRoom.id,
              roomName: chatRoom.name,
              lastMessage: lastMessage?.content,
              lastMessageTime: lastMessage?.timestamp,
              lastMessageSenderName: lastMessage?.senderId,
            ),
          );
        case Error<Message?>():
          chatRoomSummaries.add(
            ChatRoomViewItemModel(
              roomId: chatRoom.id,
              roomName: chatRoom.name,
            ),
          );
      }
    }

    return chatRoomSummaries;
  }
}
