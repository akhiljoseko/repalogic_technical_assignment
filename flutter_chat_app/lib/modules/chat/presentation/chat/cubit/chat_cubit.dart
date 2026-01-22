import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/cubit/chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required MessageRepository messageRepository,
    required String chatRoomId,
    required String activeUserId,
    required String activeUserName,
  }) : _messageRepository = messageRepository,
       _chatRoomId = chatRoomId,
       _activeUserId = activeUserId,
       _activeUserName = activeUserName,
       super(const ChatState.initial());

  final MessageRepository _messageRepository;
  final String _chatRoomId;
  final String _activeUserId;
  final String _activeUserName;

  Future<void> loadMessages() async {
    emit(const ChatState.loading());
    final result = await _messageRepository.getMessagesByChatRoomId(
      chatRoomId: _chatRoomId,
    );

    switch (result) {
      case Ok<List<Message>>():
        emit(ChatState.success(result.value));
      case Error<List<Message>>():
        emit(ChatState.error(result.error));
    }
  }

  Future<void> sendMessage(String content) async {
    if (content.trim().isEmpty) return;

    final currentMessages = state.maybeWhen(
      success: (messages) => messages,
      sending: (messages) => messages,
      orElse: () => <Message>[],
    );

    emit(ChatState.sending(currentMessages));

    final result = await _messageRepository.createMessage(
      chatRoomId: _chatRoomId,
      content: content,
      senderId: _activeUserId,
      senderName: _activeUserName,
    );

    switch (result) {
      case Ok<Message>():
        emit(ChatState.success([...currentMessages, result.value]));
      case Error<Message>():
        emit(ChatState.error(result.error));
    }
  }
}
