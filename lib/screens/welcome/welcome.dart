import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oak_social/components/button.dart';

class Welcome extends StatelessWidget {
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
      body: Column(
        children: [
          SizedBox(
            height: 133.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/Sign In.svg',
                width: 245.0,
              ),
            ],
          ),
          SizedBox(
            height: 91.0,
          ),
          DefaultButton(
            text: 'Sign Up with Email',
            press: () {
              Navigator.pushNamed(context, '/signup');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 64,
            width: 335,
            child: FlatButton(
                padding: EdgeInsets.all(20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Color(0xFF4EAD8B))),
                color: Colors.white,
                child: Text(
                  'I already have an account',
                  style: TextStyle(
                      color: Color(0xFF4EAD8B),
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                }
              ),
          ),
          SizedBox(
            height: 25.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757575),
                  decoration: TextDecoration.underline),
              children: <TextSpan>[
                TextSpan(text: 'By signing up, you agree with the '),
                TextSpan(
                    text: 'Terms of Service ',
                    style: TextStyle(
                        color: Color(0xFF4299E1),
                        fontSize: 12,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500)),
                TextSpan(text: 'and'),
                TextSpan(
                    text: '\nPrivacy Policy',
                    style: TextStyle(
                        color: Color(0xFF4299E1),
                        fontSize: 12,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w500)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
