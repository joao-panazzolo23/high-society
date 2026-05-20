import 'package:flutter/material.dart';
import 'package:high_society/features/home/pages/display-test.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

//Typography: Titles and others will have
// HVD Comic Serif
// and text/informative will have
// Gotham/Helvetica

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DisplayTest();
  }
}
