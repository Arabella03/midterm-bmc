import 'package:flutter/material.dart';


void main() {
  runApp( 
    const MaterialApp(
      home: Scaffold(
        body: Center( 
          child: Counter(),
        ),
      ),
    ),
  );
}

class Counter extends StatelessWidget { 
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    int _counter = 0; 
    void _increment() { 
      _counter++;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment, 
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}
