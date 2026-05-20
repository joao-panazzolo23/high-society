import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  final String label;
  final VoidCallback function;

  const GameButton({super.key, required this.label, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: function, child: Text(label), );
  }
}
