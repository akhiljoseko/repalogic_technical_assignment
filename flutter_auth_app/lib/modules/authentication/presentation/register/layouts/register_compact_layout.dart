import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/core/utils/snackbar_utils.dart';
import 'package:flutter_auth_app/gen/assets.gen.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/cubit/register_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/widgets/registration_form.dart';
import 'package:flutter_auth_app/shared/widgets/screen_padding.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterCompactLayout extends StatelessWidget {
  const RegisterCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          SnackbarUtils.showSuccessSnackBar(
            context,
            content: context.l10n.registerSuccessMessage,
          );
          return;
        }
        if (state is RegisterError) {
          SnackbarUtils.showErrorSnackBar(
            context,
            content: state.exception.localize(context.l10n),
          );
        }
      },
      child: Scaffold(
        body: ScreenHorizontalPadding(
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.svg.repalogicLogo.path),
                      const Vspace(24),
                      Text(
                        context.l10n.registerCreateAccountTitle,
                        style: context.textTheme.headlineMedium,
                      ),
                      const Vspace(24),
                      const RegistrationForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
