import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_auth_app/modules/authentication/data/data_sources/auth_local_data_source_impl.dart';
import 'package:flutter_auth_app/modules/authentication/data/models/user_model.dart';
import 'package:flutter_auth_app/modules/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/services/hive/hive_local_database.dart';
import 'package:flutter_auth_app/services/hive/hive_registrar.g.dart';
import 'package:flutter_auth_app/services/password_encryption_service_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here
  await Hive.initFlutter();
  Hive.registerAdapters();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (_) => AuthenticationRepositoryImpl(
            localDataSource: AuthLocalDataSourceImpl(
              localDatabase: HiveBoxLocalDatabase<UserModel>('users'),
            ),
            passwordEncryptionService: PasswordEncryptionServiceImpl(),
          ),
          dispose: (repo) => repo.dispose(),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthCubit(
          authRepository: context.read<AuthenticationRepository>(),
        ),
        child: await builder(),
      ),
    ),
  );
}
