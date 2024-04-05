import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/future_stream_provider/presentation/pages/provider/main_page_future_provider.dart';
import 'package:riverpod_study/future_stream_provider/presentation/pages/provider/main_page_stream_provider.dart';
import 'package:riverpod_study/state_notifier_provider/person_screen.dart';
import 'package:riverpod_study/state_provider/counter_screen.dart';
import 'package:riverpod_study/provider/providers.dart';
import 'package:riverpod_study/provider/second_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ref.watch(nameProvider)),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ));
                },
                child: const Text("Provider")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterScreen(),
                      ));
                },
                child: const Text("State Provider")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonScreen(),
                      ));
                },
                child: const Text("State Notifier Provider")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPageFutureProvider(),
                      ));
                },
                child: const Text("Future Provider")),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPageStreamProvider(),
                      ));
                },
                child: const Text("Stream Provider"))
          ],
        ),
      ),
    );
  }
}
