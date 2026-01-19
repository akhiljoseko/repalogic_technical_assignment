import 'package:flutter/material.dart';

class ScreenHorizontalPadding extends StatelessWidget {
  const ScreenHorizontalPadding({required this.child, super.key, this.padding});

  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 16),
      child: child,
    );
  }
}
