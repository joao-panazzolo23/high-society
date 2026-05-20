///this class was made to show widgets exclusively in debug mode.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayTest extends StatefulWidget {
  const DisplayTest({super.key});

  @override
  State<StatefulWidget> createState() => _DisplayTest();
}

class _DisplayTest extends State<DisplayTest> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ..._displays()
    ],);
  }

  List<Widget> _displays() {
    return [
      ElevatedButton(onPressed: () => {}, child: Text("TESTE")),
    ];
  }
}
