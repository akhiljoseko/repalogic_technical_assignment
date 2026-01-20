part of 'conversations_cubit.dart';

@freezed
class ConversationsState with _$ConversationsState {
  const factory ConversationsState.initial() = ConversationsInitial;
  const factory ConversationsState.loading() = ConversationsLoading;
  const factory ConversationsState.success(
    List<ChatRoomViewItemModel> chatRooms,
  ) = ConversationsLoadSuccess;
  const factory ConversationsState.error(AppException error) =
      ConversationsLoadFailure;
}
