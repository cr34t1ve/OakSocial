import 'package:flutter/material.dart';
import 'package:oak_social/components/button.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/OakSocialLogo.png',
          height: 62,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your password ?',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF4EAD8B),
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your email to reset it',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      color: Color(0xFF787879),
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0),
                )
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            SizedBox(
              width: 334.0,
              height: 60.0,
              child: TextField(
                controller: _emailController,
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0),
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            DefaultButton(
              text: 'Send Link to Reste Password',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
