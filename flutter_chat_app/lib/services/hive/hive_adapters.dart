import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';
import 'package:hive_ce/hive.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<UserModel>(),
])
// This is for code generation
// ignore: unused_element
void _() {}
