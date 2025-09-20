import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/providers/map_providers.dart';
import 'package:riverpod_test/widgets/all_provinces_list.dart';
import 'package:riverpod_test/widgets/app_theme_switch.dart';
import 'package:riverpod_test/widgets/dr_map.dart';
import 'package:riverpod_test/widgets/map_assets_list.dart';
import 'package:riverpod_test/widgets/map_regions_list.dart';

class DrMapApp extends StatelessWidget {
  const DrMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surfaceContainer,
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final fetchProvinces = ref.watch(fetchProvincesProvider);
            //ref.watch(provincesProvider);
            return fetchProvinces.when(
              data: (data) {
                return Stack(
                  children: [
                    Center(
                      child: InteractiveViewer(
                        clipBehavior: Clip.none,
                        child: DRMap(),
                      ),
                    ),
                    Align(alignment: Alignment.topLeft, child: MapAssetsList()),
                    Align(
                      alignment: Alignment.topRight,
                      child: AllProvincesList(),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: MapRegionsList(),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: AppThemeSwitch(),
                    ),
                  ],
                );
              },
              error: (error, stackTrace) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.warning), Text('Error: $error')],
                );
              },
              loading: () {
                return CircularProgressIndicator();
              },
            );
          },
        ),
      ),
    );
  }
}
