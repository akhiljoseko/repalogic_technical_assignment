import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/cubit/register_cubit.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/widgets/question_text_button.dart';
import 'package:flutter_auth_app/shared/widgets/email_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/password_text_field.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children: [
          TextFormField(
            controller: _fullNameController,
            decoration: const InputDecoration(
              hintText: 'Full Name',
              helperText: '',
            ),
          ),
          const Vspace(8),
          EmailTextField(
            controller: _emailController,
          ),
          const Vspace(8),
          PasswordTextField(
            controller: _passwordController,
          ),
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
            onPressed: () {
              if (!_formKey.currentState!.validate()) {
                setState(
                  () => _autovalidateMode = AutovalidateMode.onUserInteraction,
                );
                return;
              }
              context.read<RegisterCubit>().register(
                name: _fullNameController.text,
                email: _emailController.text,
                password: _passwordController.text,
              );
            },
            buttonLabel: 'Create Account',
          ),
          QuestionTextButton(
            onPressed: () => context.pop(),
            question: 'Already have an account? ',
            buttonLabel: 'Sign in',
          ),
        ],
      ),
    );
  }
}
