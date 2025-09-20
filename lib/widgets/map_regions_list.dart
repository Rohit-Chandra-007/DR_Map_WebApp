import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/models/enums.dart';
import 'package:riverpod_test/providers/map_providers.dart';

class MapRegionsList extends StatelessWidget {
  const MapRegionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final mapRegionList = MapRegion.values;
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width / 2,

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Regions',
            style: textStyle.headlineSmall!.copyWith(
            
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 8),
          // Expanded ensures bounded width for the radio list
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                var selectedRegion = ref.watch(selectedMapRegionProvider);
                return RadioGroup<MapRegion>(
                  groupValue: selectedRegion,
                  onChanged: (value) {
                    ref
                        .read(selectedMapRegionProvider.notifier)
                        .updateRegion(value!);
                  },
                  child: Row(
                    children: mapRegionList.map((region) {
                      return SizedBox(
                        width: 130, // fixed width for each tile
                        child: RadioListTile<MapRegion>(
                          value: region,
                          title: Text(region.name), // enum name
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
