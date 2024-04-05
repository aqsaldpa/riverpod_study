import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_study/future_stream_provider/presentation/pages/future_stream_providers.dart';

class MainPageStreamProvider extends StatelessWidget {
  const MainPageStreamProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) =>
              ref.watch(weatherStreamProviderProvider).when(
                    data: (data) => SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(data.path),
                    ),
                    error: ((error, stackTrace) => Text(error.toString())),
                    loading: () => const Text("Loading"),
                  ),
        ),
      ),
    );
  }
}
