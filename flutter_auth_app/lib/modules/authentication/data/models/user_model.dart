import 'package:flutter_auth_app/modules/authentication/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    required String name,
    required String email,
    required String encryptedPassword,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  UserModel._();

  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
    );
  }
}
