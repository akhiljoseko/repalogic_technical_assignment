import 'package:flutter/widgets.dart';
import 'package:flutter_auth_app/modules/authentication/presentation/register/layouts/register_compact_layout.dart';
import 'package:flutter_auth_app/shared/widgets/responsive_builder.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const routeName = 'register';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (_, _, _) => const RegisterCompactLayout(),
    );
  }
}
