import 'package:flutter/material.dart';
import 'package:high_society/features/home/pages/display-test.dart';

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
  @override
  Widget build(BuildContext context) {
    return DisplayTest();
  }
}
