import 'package:flutter/material.dart';

typedef ResponsiveWidgetBuilder =
    Widget Function(BuildContext context, double width, double height);

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    required this.compactLayout,
    super.key,
    this.mediumLayout,
    this.expandedLayout,
  });

  final ResponsiveWidgetBuilder compactLayout;
  final ResponsiveWidgetBuilder? mediumLayout;
  final ResponsiveWidgetBuilder? expandedLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        if (width < 600) {
          return compactLayout(context, width, height);
        } else if (width < 1200) {
          return mediumLayout?.call(context, width, height) ??
              compactLayout(context, width, height);
        } else {
          return expandedLayout?.call(context, width, height) ??
              mediumLayout?.call(context, width, height) ??
              compactLayout(context, width, height);
        }
      },
    );
  }
}
