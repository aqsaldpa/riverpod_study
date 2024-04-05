import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/state_notifier_provider/provider/person_provider.dart';

class PersonScreen extends ConsumerWidget {
  PersonScreen({super.key});

  final TextEditingController personController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var person = ref.watch(personNotifierProvider);
    var age = ref.watch(personNotifierProvider.select((person) => person.age));

    //perbedaan select dan enggak
    ref.listen(
        personNotifierProvider, (prev, next) => print("State Person Berubah"));
    ref.listen(personNotifierProvider.select((value) => value.age),
        (prev, next) => print("Umur Berubah"));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue)),
              child: TextField(
                controller: personController,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "New Name"),
              ),
            ),
            const SizedBox(height: 20),
            Text(person.name),
            const SizedBox(height: 20),
            Text("$age"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(personNotifierProvider.notifier)
                      .changeName(personController.text);
                },
                child: const Text("Change Name")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  ref.read(personNotifierProvider.notifier).birthdayUp();
                },
                child: const Text("Birthday up")),
          ],
        ),
      ),
    );
  }
}
