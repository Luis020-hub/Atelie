import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 24, 160),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: 100),
            const Image(
              image: AssetImage("lib/images/logo.png"),
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Horarios',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Equipe',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Serviços',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('chegar',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(width: 80),
          ],
        ),
      ),
      body: null,
    );
  }
}
