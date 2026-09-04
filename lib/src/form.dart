import 'package:flutter/material.dart';

class Formular extends StatelessWidget {
  const Formular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Nume',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Va rugam sa introduceti numele';
                      }
                      return null;
                    },
                    enableSuggestions: true,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Va rugam sa introduceti emailul';
                      }
                      return null;
                    },
                    enableSuggestions: true,
                  ),
                ),
              ],
            ),
            Divider(height: 20, color: const Color.fromARGB(255, 231, 80, 168)),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Solicitare',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Va rugam sa introduceti solicitarea';
                }
                return null;
              },
              enableSuggestions: true,
              maxLines: 4,
            ),
            Divider(height: 20, color: const Color.fromARGB(255, 231, 80, 168)),
            ElevatedButton(
              onPressed: () {
                // Aici puteti adauga logica pentru a trimite formularul
              },
              child: const Text('Solicita asistenta'),
            ),
          ],
        ),
      ),
    );
  }
}
