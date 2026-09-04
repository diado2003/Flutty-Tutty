import 'package:flutter/material.dart';
import 'profile.dart';
import 'anunt.dart';
import 'activity.dart';
import 'doc.dart';
import 'team.dart';
import 'project.dart';
import 'menu.dart';
import 'form.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.useMaterial3});

  final bool useMaterial3;

  final List<String> subitems = [
    'Profilul meu',
    'Anunturi',
    'Activitatile mele',
    'Documente',
    'Echipe',
    'Proiecte',
  ];

  void _navigateToNextScreen(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => Profile(useMaterial3: useMaterial3),
          ),
        );
        break;

      case 1:
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const AnunturiPage()));
        break;

      case 2:
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const Activity()));
        break;

      case 3:
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const Documents()));
        break;

      case 4:
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const Teams()));
        break;

      case 5:
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (_) => const Projects()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iNet'),
        actions: [MenuButton(useMaterial3: useMaterial3)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              childAspectRatio: 1.2,
              children: List.generate(6, (index) {
                final color = Colors.primaries[index % Colors.primaries.length];

                return Material(
                  color: color,
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    hoverColor: Colors.white.withOpacity(0.25),
                    onTap: () => _navigateToNextScreen(context, index),
                    child: Center(
                      child: Text(
                        subitems[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            Container(
              margin: const EdgeInsets.only(top: 50),
              color: const Color.fromARGB(92, 255, 199, 250),
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Text(
                          "Formular de asistenta",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 5,
                            letterSpacing: 2,
                          ),
                        ),
                        Formular(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  const Expanded(
                    flex: 1,
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'INOE 2000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Str. Atomistilor Nr. 409\n'
                          '077125, Magurele, Ilfov\n'
                          'Romania\n\n'
                          '+400214575760\n'
                          '+400214575422',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
