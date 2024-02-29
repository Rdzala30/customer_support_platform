import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

        splash: Image.asset('assets/CS.png'),
        duration: 1500,
        nextScreen: LoginScreen(),
        splashTransition: SplashTransition.rotationTransition,
        splashIconSize: 220,
        centered: true,
    );

  }
}
