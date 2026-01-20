import 'package:flutter/widgets.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/cubit/register_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/layouts/register_compact_layout.dart';
import 'package:flutter_auth_app/shared/widgets/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routeName = 'register';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        authenticationRepository: context.read<AuthenticationRepository>(),
      ),
      child: ResponsiveBuilder(
        compactLayout: (_, _, _) => const RegisterCompactLayout(),
      ),
    );
  }
}
