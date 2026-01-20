import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/router/app_router.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/core/utils/snackbar_utils.dart';
import 'package:flutter_auth_app/gen/assets.gen.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/login/cubit/login_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/widgets/question_text_button.dart';
import 'package:flutter_auth_app/shared/widgets/email_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/password_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/screen_padding.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginCompactLayout extends StatefulWidget {
  const LoginCompactLayout({super.key});

  @override
  State<LoginCompactLayout> createState() => _LoginCompactLayoutState();
}

class _LoginCompactLayoutState extends State<LoginCompactLayout> {
  final _formKey = GlobalKey<FormState>();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  late final _emailController = TextEditingController();
  late final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginError) {
          SnackbarUtils.showErrorSnackBar(
            context,
            content: state.exception.localize(context.l10n),
          );
          return;
        }
      },
      child: Scaffold(
        body: ScreenHorizontalPadding(
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Form(
                    key: _formKey,
                    autovalidateMode: _autovalidateMode,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Assets.svg.repalogicLogo.path,
                        ),
                        const Vspace(50),
                        Text(
                          'Welcome to Repalogic',
                          style: context.textTheme.titleLarge,
                        ),
                        const Vspace(12),
                        Text(
                          'Login to continue',
                          style: context.textTheme.titleMedium,
                        ),
                        const Vspace(16),
                        EmailTextField(controller: _emailController),
                        const Vspace(4),
                        PasswordTextField(controller: _passwordController),
                        const Vspace(16),
                        SizedBox(
                          width: double.maxFinite,
                          child: PrimaryButton(
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                setState(() {
                                  _autovalidateMode =
                                      AutovalidateMode.onUserInteraction;
                                });
                                return;
                              }
                              context.read<LoginCubit>().loginWithPassword(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              );
                            },
                            buttonLabel: 'Sign in',
                          ),
                        ),
                        QuestionTextButton(
                          onPressed: () =>
                              context.push(const RegisterRoute().location),
                          question: "Don't have an account? ",
                          buttonLabel: 'Sign up',
                        ),
                      ],
                    ),
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
