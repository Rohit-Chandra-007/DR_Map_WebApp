import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/pages/dr_map_app.dart' show DrMapApp;
import 'package:riverpod_test/providers/map_providers.dart';

import 'package:riverpod_test/theme/app_theme.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateThemeMode();
    });

    super.initState();
  }

  void updateThemeMode() {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    ref
        .read(appThemeProvider.notifier)
        .toggleTheme(
          brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light,
        );
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    updateThemeMode();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map App',
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(appThemeProvider),
      theme: MapAppTheme.lightTheme,
      darkTheme: MapAppTheme.darkTheme,
      home: const DrMapApp(),
    );
  }
}
