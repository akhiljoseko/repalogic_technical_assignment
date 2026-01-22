import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/cubit/chat_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/cubit/chat_state.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/widgets/chat_bubble.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/widgets/chat_input_field.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';

class ChatCompactLayout extends StatelessWidget {
  const ChatCompactLayout({
    required this.chatRoomName,
    super.key,
  });

  final String chatRoomName;

  @override
  Widget build(BuildContext context) {
    final activeUserId = context.read<ActiveUserCubit>().state!.id;

    return Scaffold(
      appBar: AppBar(
        title: Text(chatRoomName),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatCubit, ChatState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox.shrink(),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    success: (messages) =>
                        _buildMessageList(messages, activeUserId),
                    error: (error) => Center(
                      child: Text(
                        //
                        // ignore: lines_longer_than_80_chars
                        '${context.l10n.errorMessagePrefix} ${error.errorMessage}',
                      ),
                    ),
                    sending: (messages) =>
                        _buildMessageList(messages, activeUserId),
                  );
                },
              ),
            ),
            ChatInputField(
              onSend: (content) {
                context.read<ChatCubit>().sendMessage(content);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageList(List<Message> messages, String activeUserId) {
    if (messages.isEmpty) {
      return Center(
        child: Builder(
          builder: (context) {
            return Text(context.l10n.noMessagesMessage);
          },
        ),
      );
    }
    return SafeArea(
      child: ListView.builder(
        reverse: true,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          // Reversed list to show latest at bottom
          final message = messages[messages.length - 1 - index];
          return ChatBubble(
            message: message,
            isMe: message.senderId == activeUserId,
          );
        },
      ),
    );
  }
}
