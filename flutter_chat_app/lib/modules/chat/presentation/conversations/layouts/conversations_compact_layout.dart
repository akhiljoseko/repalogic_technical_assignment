import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/cubit/conversations_cubit.dart';

class ConversationsCompactLayout extends StatelessWidget {
  const ConversationsCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
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
                return ListTile(
                  title: Text(state.chatRooms[index].roomName),
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
