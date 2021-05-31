import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    //Splash duration
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/OakSocialLogo.png',
          width: 183.0,
        )
      ),
    );
  }
}