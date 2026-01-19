import 'package:flutter/material.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/login/cubit/login_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/login/layouts/login_compact_layout.dart';
import 'package:flutter_auth_app/shared/widgets/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (context, width, height) {
        return BlocProvider(
          create: (context) => LoginCubit(
            authRepository: context.read<AuthenticationRepository>(),
          ),
          child: const LoginCompactLayout(),
        );
      },
    );
  }
}
