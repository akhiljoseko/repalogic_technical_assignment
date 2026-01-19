import 'package:flutter/material.dart';
import 'package:flutter_auth_app/core/utils/context_extensions.dart';
import 'package:flutter_auth_app/core/utils/form_validators.dart';
import 'package:flutter_auth_app/gen/assets.gen.dart';
import 'package:flutter_auth_app/l10n/l10n.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/widgets/question_text_button.dart';
import 'package:flutter_auth_app/shared/widgets/primary_button.dart';
import 'package:flutter_auth_app/shared/widgets/screen_padding.dart';
import 'package:flutter_auth_app/shared/widgets/spacing.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenHorizontalPadding(
        child: Center(
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
                const EmailTextField(),
                const Vspace(4),
                const PasswordTextField(),
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
                    },
                    buttonLabel: 'Sign in',
                  ),
                ),
                const Vspace(16),
                QuestionTextButton(
                  onPressed: () {},
                  question: "Don't have an account? ",
                  buttonLabel: 'Sign up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Email',
        helperText: '',
      ),
      validator: (value) => FormValidators.validateEmail(value, context.l10n),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Password', helperText: ''),
      validator: (value) => FormValidators.validateMinLength(
        value: value,
        minLength: 8,
        fieldName: 'Password',
        l10n: context.l10n,
      ),
    );
  }
}
