import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/core/utils/result.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_state.dart';
part 'add_user_cubit.freezed.dart';

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit({required UsersRepository usersRepository})
    : _usersRepository = usersRepository,
      super(const AddUserState.initial());

  final UsersRepository _usersRepository;

  Future<void> addUser({required String name}) async {
    emit(const AddUserState.loading());
    final addUserResult = await _usersRepository.createUser(name: name);

    switch (addUserResult) {
      case Ok<User>():
        emit(const AddUserState.success());
      case Error<User>():
        emit(AddUserState.error(addUserResult.error));
    }
  }
}
