import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  const MyStatelessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Counter App')),
        body: const CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Counter Value: 0'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // TODO: Increment counter
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
