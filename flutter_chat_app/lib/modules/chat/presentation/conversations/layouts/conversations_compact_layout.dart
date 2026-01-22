import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:flutter_chat_app/gen/assets.gen.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/cubit/conversations_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/widgets/conversation_list_tile.dart';

class ConversationsCompactLayout extends StatelessWidget {
  const ConversationsCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
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
            return ListView.builder(
              itemCount: state.chatRooms.length,
              itemBuilder: (context, index) {
                return ConversationListTile(
                  conversation: state.chatRooms[index],
                  onPressed: () {},
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
