import 'package:flutter_chat_app/core/exceptions/app_exception.dart';
import 'package:flutter_chat_app/modules/chat/domain/entities/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.success(List<Message> messages) = _Success;
  const factory ChatState.error(AppException error) = _Error;
  const factory ChatState.sending(List<Message> messages) = _Sending;
}
