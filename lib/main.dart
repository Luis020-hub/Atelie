import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fama/screens/home_screen.dart';
import 'package:fama/screens/loading/loading_screen_mobile.dart';
import 'package:fama/screens/loading/loading_screen_web.dart';
import 'package:flutter/material.dart';

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
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return AnimatedSplashScreen(
            splash: constraints.maxWidth < 800
                ? const LoadingScreenMobile()
                : const LoadingScreenWeb(),
            nextScreen: const HomeScreen(),
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: Colors.purple,
          );
        },
      ),
    );
  }
}
