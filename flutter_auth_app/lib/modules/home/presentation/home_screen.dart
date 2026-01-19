import 'package:flutter/material.dart';
import 'package:flutter_auth_app/modules/home/presentation/layouts/home_compact_layout.dart';
import 'package:flutter_auth_app/shared/widgets/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      compactLayout: (context, width, height) {
        return const HomeCompactLayout();
      },
    );
  }
}
