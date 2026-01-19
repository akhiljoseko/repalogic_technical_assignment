import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/core/exceptions/app_exception.dart';
import 'package:flutter_auth_app/core/utils/result.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthenticationRepository authRepository})
    : _authRepository = authRepository,
      super(const LoginState.initial());

  final AuthenticationRepository _authRepository;

  Future<void> loginWithPassword({
    required String email,
    required String password,
  }) async {
    emit(const LoginState.loading());

    final result = await _authRepository.loginWithPassword(
      email: email,
      password: password,
    );

    switch (result) {
      case Ok<User>():
        emit(const LoginState.success());
      case Error<User>():
        emit(LoginState.error(result.error));
    }
  }
}
