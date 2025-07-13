import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resorcode_riverpod_tutorial/providers/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  void showCounterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: Text('Warning'),
          content: Text(
            'Counter dangerously high.\nConsider resetting it.',
            style: TextTheme.of(context).bodyMedium,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    ref.listen(counterProvider, (previous, next) {
      if (next >= 5) showCounterDialog(context);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          IconButton(
            onPressed: () => ref.refresh(counterProvider),
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '$counter',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
