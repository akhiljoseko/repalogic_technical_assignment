import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_user_state.dart';
part 'active_user_cubit.freezed.dart';

/// Manages the state of the currently active user.
///
/// This cubit holds the [User] object of the logged-in user, allowing
/// other parts of the app to access the current user's identity.
class ActiveUserCubit extends Cubit<User?> {
  ActiveUserCubit() : super(null);

  /// Sets the given [user] as the active user.
  void setActiveUser(User user) {
    emit(user);
  }
}
