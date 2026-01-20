import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_user_state.dart';
part 'active_user_cubit.freezed.dart';

class ActiveUserCubit extends Cubit<User?> {
  ActiveUserCubit() : super(null);

  void setActiveUser(User user) {
    emit(user);
  }
}
