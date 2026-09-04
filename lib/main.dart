import 'package:flutter/material.dart';

// import 'src/constants.dart';
import 'src/home.dart';
import 'src/profile.dart';
import 'src/anunt.dart';
import 'src/activity.dart';
import 'src/doc.dart';
import 'src/team.dart';
import 'src/project.dart';

void main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final bool _useMaterial3 = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iNet',
      theme: ThemeData(
        // colorSchemeSeed: _colorSelectionMethod == ColorSelectionMethod.colorSeed
        //     ? _colorSelected.color
        //     : null,
        // colorScheme: _colorSelectionMethod == ColorSelectionMethod.image
        //     ? _imageColorScheme
        //     : null,
        useMaterial3: _useMaterial3,
        brightness: Brightness.light,
      ),
      home: Home(useMaterial3: _useMaterial3),
      initialRoute: '/',
      routes: {
        '/profil': (context) => Profile(useMaterial3: true),
        '/anunturi': (context) => const AnunturiPage(),
        '/activitatile-mele': (context) => const Activity(),
        '/documente': (context) => const Documents(),
        '/echipe': (context) => const Teams(),
        '/proiecte': (context) => const Projects(),
      },
    );
  }
}
