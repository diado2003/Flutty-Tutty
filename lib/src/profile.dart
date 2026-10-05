import 'package:flutter/material.dart';
import 'menu.dart';
import 'form.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.useMaterial3});

  final bool useMaterial3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iNet'),
        actions: [MenuButton(useMaterial3: useMaterial3)],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(radius: 50),
              const SizedBox(height: 16),
              const Text(
                'Profilul meu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Username',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text('Nume'),
              const SizedBox(height: 8),
              const Text('Email'),
              const Divider(height: 32, color: Colors.grey),
              const Text(
                'Formular de asistenta',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Formular(),
            ],
          ),
        ),
      ),
    );
  }
}
