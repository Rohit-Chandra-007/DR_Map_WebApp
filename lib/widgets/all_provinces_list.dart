import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/models/province.dart';
import 'package:riverpod_test/providers/map_providers.dart';

class AllProvincesList extends ConsumerWidget {
  const AllProvincesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final allProvincesList = ref.watch(provincesProvider);
    final selectedProvinceList = ref.watch(selectedProvinceProvider);
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      width: 300,

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
        spacing: 14,
        children: [
          Text(
            'Provinces(${allProvincesList.length}) ',
            style: textStyle.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allProvincesList.length,
              itemBuilder: (context, index) {
                final province = allProvincesList[index];
                final isSelected = selectedProvinceList.contains(province);
                return CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  title: Text(province.name),
                  value: isSelected,
                  onChanged: (bool? value) {
                    final updatedList = [...selectedProvinceList];
                    if (value!) {
                      updatedList.add(province);
                    } else {
                      updatedList.remove(province);
                    }
                    ref
                        .read(selectedProvinceProvider.notifier)
                        .updateList(updatedList);
                  },
                );
              },
            ),
          ),
          Divider(),
          Consumer(
            builder: (context, ref, child) {
              return CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                value:
                    allProvincesList.length ==
                    ref.watch(selectedProvinceProvider).length,
                onChanged: (value) {
                  final updatedList = value! ? allProvincesList : <Province>[];
                  ref
                      .read(selectedProvinceProvider.notifier)
                      .updateList(updatedList);
                },
                title: Text('All Provinces'),
              );
            },
          ),
        ],
      ),
    );
  }
}
