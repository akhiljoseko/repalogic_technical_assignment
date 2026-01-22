import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_selection_state.dart';
part 'user_selection_cubit.freezed.dart';

/// Manages the state of the user selection screen.
///
/// Responsible for fetching the list of available users from the [UsersRepository].
class UserSelectionCubit extends Cubit<UserSelectionState> {
  UserSelectionCubit({required UsersRepository usersRepository})
    : _usersRepository = usersRepository,
      super(const UserSelectionState.initial());

  final UsersRepository _usersRepository;

  /// Fetches the list of users and emits [UserSelectionState.loaded] on success,
  /// or [UserSelectionState.error] on failure.
  Future<void> loadUsers() async {
    emit(const UserSelectionState.loading());

    final usersResult = await _usersRepository.getUsers();

    switch (usersResult) {
      case Ok<List<User>>():
        emit(UserSelectionState.loaded(usersResult.value));
      case Error<List<User>>():
        emit(UserSelectionState.error(usersResult.error));
    }
  }
}
