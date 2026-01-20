import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/chat_room.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_chat_room_state.dart';
part 'create_chat_room_cubit.freezed.dart';

class CreateChatRoomCubit extends Cubit<CreateChatRoomState> {
  CreateChatRoomCubit({
    required UsersRepository usersRepository,
    required ChatRoomsRepository chatRoomsRepository,
    required String activeUserId,
  }) : _usersRepository = usersRepository,
       _chatRoomsRepository = chatRoomsRepository,
       _activeUserId = activeUserId,
       super(const CreateChatRoomState.loadingInitialData()) {
    loadInitialData();
  }

  final UsersRepository _usersRepository;
  final ChatRoomsRepository _chatRoomsRepository;
  final String _activeUserId;

  Future<void> loadInitialData() async {
    emit(const CreateChatRoomState.loadingInitialData());
    final usersResult = await _usersRepository.getUsers();

    switch (usersResult) {
      case Ok<List<User>>():
        emit(
          CreateChatRoomState.loadingInitialDataSuccess(
            users: usersResult.value
              ..removeWhere((user) => user.id == _activeUserId),
          ),
        );
      case Error<List<User>>():
        emit(CreateChatRoomState.chatRoomCreationFailed(usersResult.error));
    }
  }

  Future<void> createChatRoom({required String roomName}) async {
    if (state is! CreateChatRoomStateLoadingInitialDataSuccess) return;

    final loadedState = state as CreateChatRoomStateLoadingInitialDataSuccess;

    emit(const CreateChatRoomState.creatingChatRoom());

    final chatRoomResult = await _chatRoomsRepository.createChatRoom(
      roomName: roomName,
      participantIds: loadedState.users.map((user) => user.id).toList()
        ..add(_activeUserId),
    );

    switch (chatRoomResult) {
      case Ok<ChatRoom>():
        emit(const CreateChatRoomState.chatRoomCreated());
      case Error<ChatRoom>():
        emit(CreateChatRoomState.chatRoomCreationFailed(chatRoomResult.error));
    }
  }

  void toggleUserSelection({required User user, required bool selected}) {
    if (state is! CreateChatRoomStateLoadingInitialDataSuccess) return;

    final loadedState = state as CreateChatRoomStateLoadingInitialDataSuccess;

    final selectedUsers = loadedState.selectedUsers.toList();

    if (selected) {
      selectedUsers.add(user);
    } else {
      selectedUsers.remove(user);
    }

    emit(
      CreateChatRoomState.loadingInitialDataSuccess(
        users: loadedState.users,
        selectedUsers: selectedUsers,
      ),
    );
  }
}
