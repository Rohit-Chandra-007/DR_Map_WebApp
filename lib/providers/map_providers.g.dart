// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectedMapAssets)
const selectedMapAssetsProvider = SelectedMapAssetsProvider._();

final class SelectedMapAssetsProvider
    extends $NotifierProvider<SelectedMapAssets, List<MapAssets>> {
  const SelectedMapAssetsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedMapAssetsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedMapAssetsHash();

  @$internal
  @override
  SelectedMapAssets create() => SelectedMapAssets();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<MapAssets> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<MapAssets>>(value),
    );
  }
}

String _$selectedMapAssetsHash() => r'8094daab49fcc215a82f53cde9f4475c7b410072';

abstract class _$SelectedMapAssets extends $Notifier<List<MapAssets>> {
  List<MapAssets> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<MapAssets>, List<MapAssets>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<MapAssets>, List<MapAssets>>,
              List<MapAssets>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(mockedProvince)
const mockedProvinceProvider = MockedProvinceProvider._();

final class MockedProvinceProvider
    extends $FunctionalProvider<List<Province>, List<Province>, List<Province>>
    with $Provider<List<Province>> {
  const MockedProvinceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockedProvinceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockedProvinceHash();

  @$internal
  @override
  $ProviderElement<List<Province>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<Province> create(Ref ref) {
    return mockedProvince(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$mockedProvinceHash() => r'c9fc2823cd035f61177baa8e1b0f5c8ffdd97213';

@ProviderFor(fetchProvinces)
const fetchProvincesProvider = FetchProvincesProvider._();

final class FetchProvincesProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  const FetchProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchProvincesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchProvincesHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return fetchProvinces(ref);
  }
}

String _$fetchProvincesHash() => r'7e3d7c431842971d614a61acf7f55b4d1ddf5b41';

@ProviderFor(Provinces)
const provincesProvider = ProvincesProvider._();

final class ProvincesProvider
    extends $NotifierProvider<Provinces, List<Province>> {
  const ProvincesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provincesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$provincesHash();

  @$internal
  @override
  Provinces create() => Provinces();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$provincesHash() => r'c0de2fb68ac2613376bc0d25bb511f966fbd5de2';

abstract class _$Provinces extends $Notifier<List<Province>> {
  List<Province> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Province>, List<Province>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Province>, List<Province>>,
              List<Province>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SelectedProvince)
const selectedProvinceProvider = SelectedProvinceProvider._();

final class SelectedProvinceProvider
    extends $NotifierProvider<SelectedProvince, List<Province>> {
  const SelectedProvinceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedProvinceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedProvinceHash();

  @$internal
  @override
  SelectedProvince create() => SelectedProvince();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Province> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Province>>(value),
    );
  }
}

String _$selectedProvinceHash() => r'8c5f9915dd017e2fa4d346cdbea1e2a3dd7cb03c';

abstract class _$SelectedProvince extends $Notifier<List<Province>> {
  List<Province> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Province>, List<Province>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Province>, List<Province>>,
              List<Province>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SelectedMapRegion)
const selectedMapRegionProvider = SelectedMapRegionProvider._();

final class SelectedMapRegionProvider
    extends $NotifierProvider<SelectedMapRegion, MapRegion> {
  const SelectedMapRegionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedMapRegionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedMapRegionHash();

  @$internal
  @override
  SelectedMapRegion create() => SelectedMapRegion();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MapRegion value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MapRegion>(value),
    );
  }
}

String _$selectedMapRegionHash() => r'a42425eb95b4fca16995412057cfe39b50b60534';

abstract class _$SelectedMapRegion extends $Notifier<MapRegion> {
  MapRegion build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MapRegion, MapRegion>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MapRegion, MapRegion>,
              MapRegion,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AppTheme)
const appThemeProvider = AppThemeProvider._();

final class AppThemeProvider extends $NotifierProvider<AppTheme, ThemeMode> {
  const AppThemeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appThemeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appThemeHash();

  @$internal
  @override
  AppTheme create() => AppTheme();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$appThemeHash() => r'4851b81d4f07395ac7f6fcff91f34cc974c71821';

abstract class _$AppTheme extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
