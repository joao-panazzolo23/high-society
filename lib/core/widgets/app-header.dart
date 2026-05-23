import 'package:flutter/material.dart';
import 'package:high_society/core/colors/app-colors.dart';
import 'package:high_society/core/widgets/app-pill.dart';
import 'package:high_society/core/widgets/hud-button.dart';

class AppHeader extends StatelessWidget {
  final double money;
  final int ruby;
  final VoidCallback onTap;

  const AppHeader({super.key, required this.money, required this.ruby, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(children: _buttons()),
      ),
    );
  }

  ///Todo: open money & ruby stores
  List<Widget> _buttons() {
    return [
      AppPill(
        onClick: () => {},
        borderColor: AppColors.red,
        backgroundColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.diamond_sharp),
            SizedBox(width: 6),
            Text(ruby.toString()),
          ],
        ),
      ),
      const SizedBox(width: 6),
      AppPill(
        onClick: () => {},
        borderColor: AppColors.green,
        backgroundColor: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.monetization_on_sharp),
            SizedBox(width: 6),
            Text(money.toString()),
          ],
        ),
      ),
      const SizedBox(width: 12),
      HudButton(
        onTap: () => {},
        backgroundColor: Colors.purple,
        borderColor: Colors.deepPurpleAccent,
        icon: Icon(Icons.store),
        child: Text("Store"),
      ),
    ];
  }
}
