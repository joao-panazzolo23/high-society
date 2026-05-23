import 'package:flutter/cupertino.dart';

class HudButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final Icon icon;

  const HudButton({
    super.key,
    required this.onTap,
    required this.backgroundColor,
    required this.borderColor,
    required this.child,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: _decoratedBox());
  }

  DecoratedBox _decoratedBox() {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: borderColor.withValues(alpha: 0.2)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: child,
      ),
    );
  }
}
