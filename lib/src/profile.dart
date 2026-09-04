import 'package:flutter/material.dart';
import 'menu.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.useMaterial3});

  final bool useMaterial3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      theme: ThemeData(useMaterial3: useMaterial3),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profilul meu'),
          actions: [MenuButton(useMaterial3: useMaterial3)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                // backgroundImage: AssetImage(
                // ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Nume:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text('Email:', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
