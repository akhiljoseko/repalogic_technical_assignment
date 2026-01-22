part of 'create_chat_room_cubit.dart';

@freezed
class CreateChatRoomState with _$CreateChatRoomState {
  const factory CreateChatRoomState.loadingInitialData() =
      CreateChatRoomStateLoadingInitialData;
  const factory CreateChatRoomState.loadingInitialDataSuccess({
    required List<User> users,
    @Default([]) List<User> selectedUsers,
  }) = CreateChatRoomStateLoadingInitialDataSuccess;

  const factory CreateChatRoomState.creatingChatRoom() =
      CreateChatRoomStateCreatingChatRoom;

  const factory CreateChatRoomState.chatRoomCreated({
    required ChatRoom chatRoom,
  }) = CreateChatRoomStateChatRoomCreated;

  const factory CreateChatRoomState.chatRoomCreationFailed(
    AppException error,
  ) = CreateChatRoomStateChatRoomCreationFailed;
}
