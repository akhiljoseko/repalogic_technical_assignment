import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/core/router/app_router.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

/// Manages the global authentication state for the application.
///
/// This cubit acts as a reactive bridge between the [AuthenticationRepository]
/// and the rest of the application (including [AppRouter]). It listens to
/// the repository's authentication stream and emits [AuthState] accordingly.
class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required AuthenticationRepository authRepository})
    : _authRepository = authRepository,
      super(const AuthState.initial()) {
    _subscription = _authRepository.authStateChanges.listen((user) {
      if (user != null) {
        emit(AuthState.authorized(user));
      } else {
        emit(const AuthState.unAuthorized());
      }
    });
  }

  final AuthenticationRepository _authRepository;
  late final StreamSubscription<User?> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
