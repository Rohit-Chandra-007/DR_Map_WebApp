import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riverpod_test/models/enums.dart';
import 'package:riverpod_test/providers/map_providers.dart';

class DRMap extends ConsumerWidget {
  const DRMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMapAssets = ref.watch(selectedMapAssetsProvider);
    final allProvince = ref.watch(provincesProvider);
    final selectedProvince = ref.watch(selectedProvinceProvider);
    final selectedMapRegion = ref.watch(selectedMapRegionProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        SvgPicture.asset('./assets/svgs/map_assets/baserd.svg'),
        SvgPicture.asset(
          './assets/svgs/provinces/islabeata.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islacatalina.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islasaona.svg',
          colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),

        ...List.generate(allProvince.length, (index) {
          final province = allProvince[index];
          var provinceColor = colorScheme.onSurface;

          if (selectedProvince.contains(province)) {
            provinceColor = Theme.of(context).brightness == Brightness.light
                ? Color.fromARGB(
                    255,
                    (index + 1) * 30,
                    (index + 2) * 40,
                    (index + 3) * 50,
                  )
                : colorScheme.tertiaryContainer;
          } else if (selectedMapRegion.provinces.contains(
            province.regionCode,
          )) {
            provinceColor = Colors.green;
          }
          return SvgPicture.asset(
            './assets/svgs/provinces/${province.code}.svg',
            colorFilter: ColorFilter.mode(provinceColor, BlendMode.srcIn),
          );
        }),

        ...List.generate(selectedMapAssets.length, (index) {
          final asset = selectedMapAssets[index];
          final seaOrName =
              (asset == MapAssets.seas || asset == MapAssets.names);
          final assetName = seaOrName ? '${asset.name}_en' : asset.name;
          final labelColor = seaOrName
              ? ColorFilter.mode(colorScheme.surfaceTint, BlendMode.srcIn)
              : null;
          return SvgPicture.asset(
            './assets/svgs/map_assets/$assetName.svg',
            colorFilter: labelColor,
          );
        }),
      ],
    );
  }
}
