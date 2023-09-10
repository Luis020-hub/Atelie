// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class LoadingScreenWeb extends StatefulWidget {
  const LoadingScreenWeb({super.key});

  @override
  State<LoadingScreenWeb> createState() => _LoadingScreenWebState();
}

class _LoadingScreenWebState extends State<LoadingScreenWeb> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("lib/images/logo.png"),
              fit: BoxFit.cover,
              width: 600,
              height: 600,
            ),
          ],
        ),
      );
    });
  }
}
