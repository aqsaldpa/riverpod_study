// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_study/state_notifier_provider/model/person.dart';

// class PersonNotifier extends StateNotifier<Person> {
//   PersonNotifier() : super(Person(name: "no name", age: 0));

//   void changeName(String name) => state = state.copyWith(name: name);
//   void birthdayUp() => state = state.copyWith(age: state.age + 1);
// }

// final personProvider =
//     StateNotifierProvider<PersonNotifier, Person>((ref) => PersonNotifier());

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_study/state_notifier_provider/model/person.dart';

part 'person_provider.g.dart';

@riverpod
class PersonNotifier extends _$PersonNotifier {
  @override
  Person build() => Person(name: "no name", age: 0);

  void changeName(String name) => state = state.copyWith(name: name);
  void birthdayUp() => state = state.copyWith(age: state.age + 1);
}
