import 'package:flutter_auth_app/modules/authentication/data/models/user_model.dart';
import 'package:hive_ce/hive.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<UserModel>(),
])
// This is for code generation
// ignore: unused_element
void _() {}
