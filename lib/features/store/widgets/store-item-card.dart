import 'package:flutter/material.dart';

import '../models/store-item.model.dart';

class StoreItemCard extends StatelessWidget {
  final StoreItemModel model;

  const StoreItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return _card();
  }

  Card _card() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(children: [...stack()]),
      ),
    );
  }

  List<Widget> stack() {
    return [
      //Image(), this would be placed at the very center,
      // considering the lower part of the bar is also at that sum
      Center(child: Text(model.name)),
      Row(
        children: [
          Icon(Icons.wallet),
          Text(model.price.toString()),
        ],
      ),
      Row(
        children: [Icon(Icons.groups_outlined), Text(model.price.toString())],
      ),
      Row(
        children: [Icon(Icons.policy), Text(model.price.toString())],
      ),
    ];
  }
}