import 'package:flutter/material.dart';

//It reduces boilerplate AND creates a very functional/easy way to reutilize context themes.
class AppColorScheme {
  final BuildContext context;
  late final TextTheme text;
  late final ColorScheme colors;

  AppColorScheme(this.context) {
    final theme = Theme.of(context);
    text = theme.textTheme;
    colors = theme.colorScheme;
  }
}
