import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
sealed class Message with _$Message {
  const factory Message({
    required String id,
    required String roomId,
    required String senderId,
    required String senderName,
    required String content,
    required DateTime timestamp,
  }) = _Message;
}
