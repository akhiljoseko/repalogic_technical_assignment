import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:flutter_chat_app/gen/assets.gen.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/cubit/conversations_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/widgets/conversation_list_tile.dart';

class ConversationsCompactLayout extends StatelessWidget {
  const ConversationsCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.chatsTitle),
        actions: [
          IconButton(
            onPressed: () {
              const UserSelectionRoute().go(context);
            },
            icon: Image.asset(
              Assets.icons.icSwitchAccount.path,
              width: 28,
              height: 28,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          const CreateChatRoomRoute().go(context);
        },
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<ConversationsCubit, ConversationsState>(
        builder: (context, state) {
          if (state is ConversationsLoadSuccess) {
            if (state.chatRooms.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.chat_bubble_outline,
                      size: 48,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.l10n.noChatsAvailableMessage,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }
            return ListView.builder(
              itemCount: state.chatRooms.length,
              itemBuilder: (context, index) {
                return ConversationListTile(
                  conversation: state.chatRooms[index],
                  onPressed: () {
                    ChatRoute(
                      chatroomId: state.chatRooms[index].roomId,
                      chatRoomName: state.chatRooms[index].roomName,
                    ).go(context);
                  },
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
