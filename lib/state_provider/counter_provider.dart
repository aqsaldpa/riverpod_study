// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final counterProvider = StateProvider(
//   (ref) => 0,
// );

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@riverpod
class CounterNotifier extends _$CounterNotifier {
  @override
  int build() => 0;

  @override
  set state(int newState) => super.state = newState;
  int update(int Function(int state) cb) => state = cb(state);
}
