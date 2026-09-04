import 'package:flutter/material.dart';

class Documents extends StatelessWidget {
  const Documents({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Documents Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
