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

/// Bootstraps the application by initializing the [AuthenticationRepository],
/// [AuthCubit], and other core dependencies.
///
/// This function wraps the application with [MultiRepositoryProvider] and
/// [BlocProvider] to ensure core services are available throughout the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here
  await Hive.initFlutter();
  Hive.registerAdapters();

  // Initialize the repository implementation.
  // Note: The constructor for AuthenticationRepositoryImpl might need to be updated
  // to accept these dependencies as optional or to have default implementations.
  final authRepository = AuthenticationRepositoryImpl(
    localDataSource: AuthLocalDataSourceImpl(
      localDatabase: HiveBoxLocalDatabase<UserModel>('users'),
    ),
    passwordEncryptionService: PasswordEncryptionServiceImpl(),
  );

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>.value(
          value: authRepository,
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
