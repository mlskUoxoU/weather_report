import 'package:flutter/material.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Weather Forecast'),
      ),
      body: const Center(
          child: Text('Implement Someday🍒', style: TextStyle(fontSize: 32.0))),
    );
  }
}
