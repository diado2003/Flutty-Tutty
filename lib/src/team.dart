import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  const Teams({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Teams Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
