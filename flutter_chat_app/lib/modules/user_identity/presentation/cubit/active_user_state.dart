part of 'active_user_cubit.dart';

@freezed
class ActiveUserState with _$ActiveUserState {
  const factory ActiveUserState.initial() = Initial;
  const factory ActiveUserState.loading() = UsersLoading;
  const factory ActiveUserState.success({
    List<User>? users,
    User? selectedUser,
  }) = UsersLoadSuccess;
  const factory ActiveUserState.error(AppException error) = UsersLoadError;
}
