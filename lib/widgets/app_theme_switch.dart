import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/providers/map_providers.dart';

class AppThemeSwitch extends ConsumerWidget {
  const AppThemeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(appThemeProvider);
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.light_mode),
          Switch(
            value: appTheme == ThemeMode.dark,
            onChanged: (value) {
              ref
                  .read(appThemeProvider.notifier)
                  .toggleTheme(value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
          Icon(Icons.dark_mode),
        ],
      ),
    );
  }
}
