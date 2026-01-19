import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
}
