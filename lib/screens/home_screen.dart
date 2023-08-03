// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
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
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Text('Equipe',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Text('Serviços',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                Text('Como chegar',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(width: 80),
              ],
            ),
          ),
          body: null,
        );
      },
    );
  }
}
