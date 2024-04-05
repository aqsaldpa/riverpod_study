// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_stream_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherFutureProviderHash() =>
    r'f6885d45105bf3a2ae20ca2d4ef819ff63d8288a';

/// See also [weatherFutureProvider].
@ProviderFor(weatherFutureProvider)
final weatherFutureProviderProvider =
    AutoDisposeFutureProvider<Weathers>.internal(
  weatherFutureProvider,
  name: r'weatherFutureProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherFutureProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherFutureProviderRef = AutoDisposeFutureProviderRef<Weathers>;
String _$weatherStreamProviderHash() =>
    r'2070a05b9d19bda62fe2c7e836c1d6936b3f058f';

/// See also [weatherStreamProvider].
@ProviderFor(weatherStreamProvider)
final weatherStreamProviderProvider =
    AutoDisposeStreamProvider<Weathers>.internal(
  weatherStreamProvider,
  name: r'weatherStreamProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherStreamProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherStreamProviderRef = AutoDisposeStreamProviderRef<Weathers>;
String _$weathersProvHash() => r'cd772d8d1bfc165a3d8481043cba620295dde7e8';

/// See also [WeathersProv].
@ProviderFor(WeathersProv)
final weathersProvProvider =
    AutoDisposeNotifierProvider<WeathersProv, WeatherRepository>.internal(
  WeathersProv.new,
  name: r'weathersProvProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$weathersProvHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WeathersProv = AutoDisposeNotifier<WeatherRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
