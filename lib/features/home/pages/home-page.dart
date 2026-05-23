import 'package:flutter/material.dart';
import 'package:high_society/core/widgets/app-header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Typography: Titles, button texts will have
// HVD Comic Serif
// and text/informative will have
// Gotham/Helvetica

class _HomePageState extends State<HomePage> {
  final money = 10.0;
  final ruby = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: AppHeader(money: money, ruby: ruby, onTap: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
