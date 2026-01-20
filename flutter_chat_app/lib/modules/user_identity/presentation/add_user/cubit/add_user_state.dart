part of 'add_user_cubit.dart';

@freezed
class AddUserState with _$AddUserState {
  const factory AddUserState.initial() = _Initial;
  const factory AddUserState.loading() = _Loading;
  const factory AddUserState.success() = AddUserSuccess;
  const factory AddUserState.error(AppException error) = AddUserError;
}
