import 'package:flutter/material.dart';
import 'package:resorcode_riverpod_tutorial/pages/counter_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CounterPage(),
              ),
            );
          },
          child: const Text('Go to Counter Page'),
        ),
      ),
    );
  }
}
