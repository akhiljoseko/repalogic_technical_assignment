import 'package:flutter/material.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/view_models/chat_room_view_item_model.dart';

class ConversationListTile extends StatelessWidget {
  const ConversationListTile({
    required this.conversation,
    required this.onPressed,
    super.key,
  });

  final ChatRoomViewItemModel conversation;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.group_rounded)),
      onTap: onPressed,
      title: Text(conversation.roomName),
      subtitle: conversation.lastMessage != null
          ? Text(
              '${conversation.lastMessageSenderName}: ${conversation.lastMessage}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          : null,
    );
  }
}
