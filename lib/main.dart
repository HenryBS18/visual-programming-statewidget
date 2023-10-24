import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatelessApp());
  // runApp(const MyStatefulWidgetApp());
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
            onPressed: () {},
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidgetApp extends StatefulWidget {
  const MyStatefulWidgetApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyStatefulWidgetAppState createState() => _MyStatefulWidgetAppState();
}

class _MyStatefulWidgetAppState extends State<MyStatefulWidgetApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Counter App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Counter Value: $counter'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: incrementCounter,
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
