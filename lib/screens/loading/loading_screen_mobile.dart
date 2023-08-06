// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class LoadingScreenMobile extends StatefulWidget {
  const LoadingScreenMobile({super.key});

  @override
  State<LoadingScreenMobile> createState() => _LoadingScreenMobileState();
}

class _LoadingScreenMobileState extends State<LoadingScreenMobile> {
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
              width: 300,
              height: 300,
            ),
          ],
        ),
      );
    });
  }
}
