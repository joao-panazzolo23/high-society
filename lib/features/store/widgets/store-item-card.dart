import 'package:flutter/material.dart';
import 'package:high_society/features/store/widgets/store-item-details.dart';

import '../../../core/themes/app-color-scheme.dart';
import '../models/store-item.model.dart';

class StoreItemCard extends StatelessWidget {
  final StoreItemModel model;

  const StoreItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    var scheme = AppColorScheme(context);

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => _showModalBottomSheet(context),
      child: _hero(scheme.text),
    );
  }

  Hero _hero(TextTheme theme) {
    return Hero(
      tag: model.name,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: buildChildren(theme),
          ),
        ),
      ),
    );
  }

  List<Widget> buildChildren(TextTheme textTheme) {
    return [
      //Image(), this would be placed at the very center,
      // considering the lower part of the bar is also at that sum
      Align(
        alignment: AlignmentGeometry.center,
        child: Text(model.name, style: textTheme.titleLarge),
      ),

      //todo: refactor this.
      Row(children: [const Icon(Icons.wallet), Text(model.price.toString())]),
      Row(
        children: [
          const Icon(Icons.groups_outlined),
          Text(model.price.toString()),
        ],
      ),
      Row(children: [Icon(Icons.policy), Text(model.price.toString())]),
    ];
  }

  Future<dynamic> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (_) {
        return StoreItemDetails(model: model);
      },
    );
  }
}
