import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/cubit/conversations_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/layouts/conversations_compact_layout.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/responsive_builder.dart';

class ConversationsScreen extends StatelessWidget {
  const ConversationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConversationsCubit(
        chatRoomsRepository: context.read<ChatRoomsRepository>(),
        messageRepository: context.read<MessageRepository>(),
        activeUserId: context.read<ActiveUserCubit>().state!.id,
      ),
      child: ResponsiveBuilder(
        compactLayout: (_, _, _) => const ConversationsCompactLayout(),
      ),
    );
  }
}
