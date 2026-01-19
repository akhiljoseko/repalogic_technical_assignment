import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/router/app_router.dart';
import 'package:flutter_auth_app/core/theme/app_theme.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';
import 'package:flutter_auth_app/modules/authentication/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _appRouter = AppRouter(
    authCubit: context.read<AuthCubit>(),
  ).router;

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter,
      theme: AppTheme.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
