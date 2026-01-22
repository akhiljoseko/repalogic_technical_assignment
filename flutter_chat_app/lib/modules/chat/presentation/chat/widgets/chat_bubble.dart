import 'package:flutter/material.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    required this.message,
    required this.isMe,
    super.key,
  });

  final Message message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue[100] : Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: isMe ? const Radius.circular(12) : Radius.zero,
            bottomRight: isMe ? Radius.zero : const Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isMe)
              Text(
                message.senderName,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            const SizedBox(height: 2),
            Text(
              message.content,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 2),
            Text(
              _formatTime(message.timestamp),
              style: const TextStyle(fontSize: 10, color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime timestamp) {
    //
    // ignore: lines_longer_than_80_chars
    return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
  }
}
