import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 144, 24, 160),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 100),
            Image(
              image: AssetImage("lib/images/logo.png"),
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            Text('Horarios',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Text('Equipe', style: TextStyle(color: Colors.white, fontSize: 20)),
            Text('Serviços',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            Text('Como chegar',
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(width: 80),
          ],
        ),
      ),
      body: null,
    );
  }
}
