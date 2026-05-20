import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:high_society/features/store/models/store-item.model.dart';
import 'package:high_society/features/store/widgets/store-list.dart';

class Store extends StatelessWidget {
  //todo: this is going to be get from a provider
  late List<StoreItemModel> items = [];
  Store({super.key});


  @override
  Widget build(BuildContext context) {
    return StoreList(models: items);
  }
}


