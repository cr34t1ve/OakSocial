import 'package:flutter/material.dart';
import 'package:oak_social/components/button.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _isHidden = true;

  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                  'Welcome Back',
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
                  'Sign In to continue',
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
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 334.0,
              height: 60.0,
              child: TextFormField(
                controller: _passwordController,
                // onSaved: (val) => passwordController.text = val,
                autofocus: false,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _isHidden,
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    suffixIcon: GestureDetector(
                      onTap: _toggle,
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        //color: Colors.black,
                      ),
                    ),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            DefaultButton(
              text: 'Sign In',
              press: () {},
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Need an Account? Join Oak Social',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                      color: Color(0xFF4299E1),
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                      color: Color(0xFF4299E1),
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
