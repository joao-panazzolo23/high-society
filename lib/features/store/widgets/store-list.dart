import 'package:flutter/cupertino.dart';
import 'package:high_society/features/store/widgets/store-item-card.dart';

import '../models/store-item.model.dart';

class StoreList extends StatelessWidget {
  final List<StoreItemModel> models;

  const StoreList({super.key, required this.models});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: models.length,
      itemBuilder: (context, index) {
        return StoreItemCard(model: models[index]);
      },
    );
  }
}
