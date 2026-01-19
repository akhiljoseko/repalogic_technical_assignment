part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.unAuthorized() = UnAuthorized;
  const factory AuthState.authorized(User user) = Authorized;
}
