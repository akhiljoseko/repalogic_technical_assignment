import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String name,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromEntity(User user) =>
      UserModel(id: user.id, name: user.name);

  UserModel._();

  User toEntity() => User(id: id, name: name);
}
