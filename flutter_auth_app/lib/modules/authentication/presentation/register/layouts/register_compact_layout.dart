import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/gen/assets.gen.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/widgets/question_text_button.dart';
import 'package:flutter_auth_app/shared/widgets/email_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/password_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/screen_padding.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class RegisterCompactLayout extends StatelessWidget {
  const RegisterCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Create Account',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Vspace(24),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Full Name',
                              helperText: '',
                            ),
                          ),
                          const Vspace(8),
                          const EmailTextField(),
                          const Vspace(8),
                          const PasswordTextField(),
                          const Vspace(16),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By creating an account, you agree to our ',
                              style: context.textTheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: '\nTerms and Conditions',
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: context.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Vspace(16),
                          PrimaryButton(
                            onPressed: () {},
                            buttonLabel: 'Create Account',
                          ),
                          QuestionTextButton(
                            onPressed: () => context.pop(),
                            question: 'Already have an account? ',
                            buttonLabel: 'Sign in',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
