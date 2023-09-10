import 'package:flutter/material.dart';

import '../../items/equipe_item.dart';

class Equipe extends StatelessWidget {
  const Equipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            "Equipe",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ),
        EquipeItem(),
      ],
    );
  }
}
