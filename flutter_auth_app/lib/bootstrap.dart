import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (_) => AuthenticationRepositoryImpl(),
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
