part of 'user_selection_cubit.dart';

@freezed
class UserSelectionState with _$UserSelectionState {
  const factory UserSelectionState.initial() = _Initial;
  const factory UserSelectionState.loading() = UsersLoading;
  const factory UserSelectionState.loaded(List<User> users) = UsersLoadSuccess;
  const factory UserSelectionState.error(AppException error) = UsersLoadError;
}
