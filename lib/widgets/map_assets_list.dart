import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/models/enums.dart';
import 'package:riverpod_test/providers/map_providers.dart';

class MapAssetsList extends StatelessWidget {
  const MapAssetsList({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      width: 300,
      height: 350,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withAlpha(5), // Shadow color and opacity
            offset: Offset(4, 4), // Horizontal and vertical offset
            blurRadius: 8, // How blurry the shadow is
            spreadRadius: 2, // How much the shadow spreads
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            'Show',
            style: textStyle.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                final mapAssetsList = ref.watch(selectedMapAssetsProvider);
                return ListView.builder(
                  itemCount: MapAssets.values.length,
                  itemBuilder: (context, index) {
                    final mapAsset = MapAssets.values[index];
                    final assetValue = mapAssetsList.contains(mapAsset);
                    return CheckboxListTile(
                      title: Text(mapAsset.name),
                      value: assetValue,
                      onChanged: (bool? value) {
                        final updatedList = [...mapAssetsList];
                        if (value!) {
                          updatedList.add(mapAsset);
                        } else {
                          updatedList.remove(mapAsset);
                        }
                        ref
                            .read(selectedMapAssetsProvider.notifier)
                            .updateList(updatedList);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
