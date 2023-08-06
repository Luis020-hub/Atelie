import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 144, 24, 160),
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage("lib/images/logo.png"),
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          SizedBox(width: 50),
        ],
      ),
    );
  }
}
