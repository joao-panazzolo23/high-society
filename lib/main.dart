import 'package:flutter/material.dart';

import 'features/home/pages/home-page.dart';

//TODO: CUSTOMIZE
// ThemeData(
// colorScheme:
// textTheme:
// cardTheme:
// inputDecorationTheme:
// elevatedButtonTheme:
// outlinedButtonTheme:
// snackBarTheme:
// dialogTheme:
// appBarTheme:
// dividerTheme:
// tabBarTheme:
// )

//and then
// lib/
//  ├ core/
//  │   ├ theme/
//  │   ├ widgets/
//  │   ├ animations/
//  │   ├ constants/
//  │   └ extensions/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

