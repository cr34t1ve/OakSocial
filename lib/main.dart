import 'package:flutter/material.dart';
import 'package:oak_social/screens/explore/explore.dart';
import 'package:oak_social/screens/forgotpassword/forgotpassword.dart';
import 'package:oak_social/screens/home/home.dart';
import 'package:oak_social/screens/onboarding/onboarding.dart';
import 'package:oak_social/screens/signin/signin.dart';
import 'package:oak_social/screens/signup/signup.dart';
import 'package:oak_social/screens/welcome/welcome.dart';

void main() {
  runApp(MaterialApp(
    home: Explore(),
    debugShowCheckedModeBanner: false,
  ));
}
