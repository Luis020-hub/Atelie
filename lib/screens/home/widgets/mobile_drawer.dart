import 'package:flutter/material.dart';

class MobileSideBar extends StatelessWidget {
  const MobileSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: ListView(
        children: [
          const SizedBox(
            height: 80,
            child: DrawerHeader(
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 26),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text(
              'Horarios',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text(
              'Equipe',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.room_service),
            title: const Text(
              'Serviços',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text(
              'Como chegar',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
