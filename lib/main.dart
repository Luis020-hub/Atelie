import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fama/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Screens/LoadingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
        splash: const LoadingScreen(),
        nextScreen: const HomeScreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.purple,
      ),
    );
  }
}
