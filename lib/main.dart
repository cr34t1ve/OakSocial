import 'package:flutter/material.dart';
import 'package:oak_social/screens/explore/explore.dart';
import 'package:oak_social/screens/forgotpassword/forgotpassword.dart';
import 'package:oak_social/screens/home/home.dart';
import 'package:oak_social/screens/navpage/navpage.dart';
import 'package:oak_social/screens/onboarding/onboarding.dart';
import 'package:oak_social/screens/signin/signin.dart';
import 'package:oak_social/screens/signup/signup.dart';
import 'package:oak_social/screens/splash.dart';
import 'package:oak_social/screens/welcome/welcome.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/splash',
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.dark,
    routes: {
      '/': (context) => Home(),
      '/splash': (context) => Splash(),
      '/onboarding': (context) => Onboarding(),
      '/welcome': (context) => Welcome(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/forgotpassword': (context) => ForgotPassword(),
      '/explore': (context) => Explore(),
      '/navpage': (context) => NavPage(),
    },
  ));
}
