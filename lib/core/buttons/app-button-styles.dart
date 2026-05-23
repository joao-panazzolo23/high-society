import 'package:flutter/material.dart';
import 'package:high_society/core/colors/app-colors.dart';

//TODO: MAKE CUSTOM BUTTONS
class AppButtonStyles {
  static ButtonStyle primary = ButtonStyle();
  static ButtonStyle secondary = ButtonStyle();
  static ButtonStyle danger = ButtonStyle();
  static ButtonStyle warning = ButtonStyle();
  static ButtonStyle add = ButtonStyle();
  static ButtonStyle pill = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    shape: const StadiumBorder(side: BorderSide(width: 2.5)),
    elevation: 0,
    minimumSize: const Size(80, 36),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
