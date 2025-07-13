import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resorcode_riverpod_tutorial/providers/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterProvider(2));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(
          counter.when(
            data: (data) => data.toString(),
            error: (error, stackTrace) => 'Error',
            loading: () => 'Loading...',
          ),
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
