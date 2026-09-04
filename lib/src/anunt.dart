import 'package:flutter/material.dart';

class AnunturiPage extends StatelessWidget {
  const AnunturiPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Anunturi Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
