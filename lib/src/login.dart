import 'package:flutter/material.dart';
import 'environment.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final uri = Uri.parse(Environment.ISSUER);

            await launchUrl(uri, mode: LaunchMode.externalApplication);
          },
          child: const Text('Login'),
        ),
      ),
    );
  }
}
