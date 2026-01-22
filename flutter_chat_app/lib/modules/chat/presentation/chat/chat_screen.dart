import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/cubit/chat_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/chat/layouts/chat_compact_layout.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/responsive_builder.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    required this.chatroomId,
    required this.chatRoomName,
    super.key,
  });

  final String chatroomId;
  final String chatRoomName;

  @override
  Widget build(BuildContext context) {
    final activeUser = context.read<ActiveUserCubit>().state!;

    return BlocProvider(
      create: (context) => ChatCubit(
        messageRepository: context.read<MessageRepository>(),
        chatRoomId: chatroomId,
        activeUserId: activeUser.id,
        activeUserName: activeUser.name,
      )..loadMessages(),
      child: ResponsiveBuilder(
        compactLayout: (_, _, _) => ChatCompactLayout(
          chatRoomName: chatRoomName,
        ),
      ),
    );
  }
}
