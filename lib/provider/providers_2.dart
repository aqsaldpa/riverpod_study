import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers_2.g.dart';

@riverpod
class Name extends _$Name {
  @override
  String build() {
    return 'Jono';
  }

  setName(String name) {
    state = name;
  }
}
