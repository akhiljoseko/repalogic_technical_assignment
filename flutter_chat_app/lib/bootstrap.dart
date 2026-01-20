import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source_impl.dart';
import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';
import 'package:flutter_chat_app/modules/user_identity/data/repositories/users_repository_impl.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/services/hive/hive_local_database.dart';
import 'package:flutter_chat_app/services/hive/hive_registrar.g.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await Hive.initFlutter();
  Hive.registerAdapters();

  // Add cross-flavor configuration here

  final usersRepository = UsersRepositoryImpl(
    usersLocalDataSource: UsersLocalDataSourceImpl(
      usersDatabase: HiveBoxLocalDatabase<UserModel>('users'),
    ),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UsersRepository>.value(
          value: usersRepository,
        ),
      ],
      child: BlocProvider(
        lazy: false,
        create: (context) => ActiveUserCubit(),
        child: await builder(),
      ),
    ),
  );
}
