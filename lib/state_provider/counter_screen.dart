import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/state_provider/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int number = ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$number"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.read(counterNotifierProvider.notifier).state += 1;
                },
                child: const Text("Increment")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(counterNotifierProvider);
                },
                child: const Text("Reset Invalidate")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(counterNotifierProvider.notifier)
                      .update((state) => 2);
                },
                child: const Text("UPDATE TO 2"))
          ],
        ),
      ),
    );
  }
}
