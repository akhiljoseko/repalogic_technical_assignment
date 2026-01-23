import 'package:flutter/material.dart';

class Vspace extends StatelessWidget {
  const Vspace(this.verticalSpacing, {super.key});

  final double verticalSpacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: verticalSpacing,
    );
  }
}

class Hspace extends StatelessWidget {
  const Hspace(this.horizontalSpacing, {super.key});

  final double horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: horizontalSpacing,
    );
  }
}
