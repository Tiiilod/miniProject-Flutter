import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


import 'miniProject.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Icon(Icons.home),
      nextScreen: MiniProject(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      duration: 2000,
    );
  }
}