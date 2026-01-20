import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository,
       super(const RegisterState.initial());

  final AuthenticationRepository _authenticationRepository;

  Future<void> register({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(const RegisterState.loading());
    final registerResult = await _authenticationRepository.createAccount(
      email: email,
      password: password,
      name: name,
    );
    switch (registerResult) {
      case Ok<User>():
        emit(const RegisterState.success());
      case Error<User>():
        emit(RegisterState.error(registerResult.error));
    }
  }
}
