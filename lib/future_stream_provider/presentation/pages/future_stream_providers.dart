// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_study/future_stream_provider/repositories/weather_repository.dart';

// var weatherRepositoryProvider = Provider<WeatherRepository>(
//   (ref) => WeatherRepository(),
// );

// var weatherFutureProvider = FutureProvider<Weathers>(
//   (ref) => ref.watch(weatherRepositoryProvider).getCurrentWeather("Sragen"),
// );

// var weatherStreamProvider = StreamProvider<Weathers>(
//     (ref) => ref.watch(weatherRepositoryProvider).getWeatherStream("Sragen"));

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_study/future_stream_provider/repositories/weather_repository.dart';

part 'future_stream_providers.g.dart';

@riverpod
class WeathersProv extends _$WeathersProv {
  @override
  WeatherRepository build() {
    return WeatherRepository();
  }
}

@riverpod
Future<Weathers> weatherFutureProvider(WeatherFutureProviderRef ref) async {
  return ref.watch(weathersProvProvider).getCurrentWeather("Sragen");
}

@riverpod
Stream<Weathers> weatherStreamProvider(WeatherStreamProviderRef ref) async* {
  while (true) {
    yield await ref.watch(weathersProvProvider).getCurrentWeather("Sragen");
  }
}
