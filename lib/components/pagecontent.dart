import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    Key key,
    this.text,
    this.image,
    this.text1,
  }) : super(key: key);
  final String text, image, text1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        SvgPicture.asset(
          image,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: 62.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF4EAD8D)),
            ),
            SizedBox(width: 10),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}