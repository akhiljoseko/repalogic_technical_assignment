import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';
import 'package:flutter_auth_app/modules/authentication/domain/repositories/authentication_repository.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/cubit/auth_cubit.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/screen_padding.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCompactLayout extends StatelessWidget {
  const HomeCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.homeAppBarTitle),
      ),
      body: Center(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is! Authorized) {
              return const SizedBox.shrink();
            }
            final user = state.user;
            return ScreenHorizontalPadding(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  PrimaryButton(
                    onPressed: () =>
                        context.read<AuthenticationRepository>().logout(),
                    buttonLabel: context.l10n.homeSignOutButton,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
