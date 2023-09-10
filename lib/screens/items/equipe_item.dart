import 'package:flutter/material.dart';

class EquipeItem extends StatelessWidget {
  const EquipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/images/fabiana.png'),
                backgroundColor: Color.fromARGB(255, 190, 67, 206),
              ),
            ),
            Text("Fabiana",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Costureira"),
          ],
        ),
        Column(
          children: [
            FittedBox(
              fit: BoxFit.contain,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('lib/images/marilda.png'),
                backgroundColor: Color.fromARGB(255, 190, 67, 206),
              ),
            ),
            Text("Marilda",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Auxiliar de Costura"),
          ],
        ),
      ],
    );
  }
}
