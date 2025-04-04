import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Weather Report'),
      ),
      body:
          const Center(child: Text('Home画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
