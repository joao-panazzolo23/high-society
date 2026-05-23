import 'package:flutter/cupertino.dart';

class AppPill extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color backgroundColor;
  final VoidCallback onClick;

  const AppPill({
    super.key,
    required this.child,
    required this.borderColor,
    required this.backgroundColor,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(decoration: _boxDecoration(), child: _padding());
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(999),
      border: Border.all(color: borderColor, width: 1.5),
      color: backgroundColor,
      boxShadow: _boxShadow(),
    );
  }

  List<BoxShadow> _boxShadow() {
    return [
      BoxShadow(
        color: borderColor.withValues(alpha: 0.20),
        blurRadius: 12,
        spreadRadius: 1,
      )
    ];
  }

  Padding _padding() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: child,
    );
  }
}
