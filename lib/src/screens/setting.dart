import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Setting'),
      ),
      body: const Center(
          child: Text('You have nothing to do here.',
              style: TextStyle(fontSize: 32.0))),
    );
  }
}
