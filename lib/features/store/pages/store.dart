import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:high_society/features/store/models/store-item.model.dart';
import 'package:high_society/features/store/widgets/store-list.dart';

class Store extends StatefulWidget {

  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  //todo: this is going to be get from a provider
  late List<StoreItemModel> items = [];

  @override
  Widget build(BuildContext context) {
    return StoreList(models: items);
  }
}



