import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room.freezed.dart';

@freezed
sealed class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required String id,
    required String name,
    @Default([]) List<String> participantIds,
    required DateTime createdAt,
  }) = _ChatRoom;
}
