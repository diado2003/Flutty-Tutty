import 'package:flutter/material.dart';
import 'profile.dart';
import 'anunt.dart';
import 'activity.dart';
import 'doc.dart';
import 'team.dart';
import 'project.dart';
import 'home.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({super.key, required this.useMaterial3});

  final bool useMaterial3;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  final List<String> menuItems = [
    'Acasa',
    'Anunturi',
    'Taskuri',
    'Documente',
    'Echipe',
    'Proiecte',
    'Profilul meu',
    'Iesire',
  ];

  void _navigateToSelectedScreen(BuildContext context, int selectedItem) {
    switch (selectedItem) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => Home(useMaterial3: widget.useMaterial3),
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

      case 6:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const Profile(useMaterial3: true)),
        );
        break;

      case 7:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.menu, color: Colors.white, size: 30),
      autofocus: false,
      itemHeight: 100,
      menuWidth: 500,
      dropdownColor: Colors.black,
      underline: const SizedBox.shrink(),
      items: menuItems.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: _HoverMenuItem(item: item),
        );
      }).toList(),
      onChanged: (selectedItem) {
        if (selectedItem == null) return;

        final index = menuItems.indexOf(selectedItem);
        _navigateToSelectedScreen(context, index);
      },
    );
  }
}

class _HoverMenuItem extends StatefulWidget {
  const _HoverMenuItem({required this.item});

  final String item;

  @override
  State<_HoverMenuItem> createState() => _HoverMenuItemState();
}

class _HoverMenuItemState extends State<_HoverMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: true,
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() => isHovered = true);
      },
      onExit: (_) {
        setState(() => isHovered = false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 30),
        width: 500,
        height: 100,
        alignment: Alignment.center,
        color: isHovered ? Colors.blueGrey : Colors.transparent,
        child: Text(
          widget.item,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
