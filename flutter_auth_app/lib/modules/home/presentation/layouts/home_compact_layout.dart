import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/modules/authentication/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCompactLayout extends StatelessWidget {
  const HomeCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is! Authorized) {
              return const SizedBox.shrink();
            }
            final user = state.user;
            return Column(
              children: [
                CircleAvatar(
                  child: Text(user.name.substring(0, 1)),
                ),
                Text(
                  user.name,
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  user.email,
                  style: context.textTheme.bodyMedium,
                ),

                const Vspace(28),
                const PrimaryButton(buttonLabel: 'Sign out'),
              ],
            );
          },
        ),
      ),
    );
  }
}
