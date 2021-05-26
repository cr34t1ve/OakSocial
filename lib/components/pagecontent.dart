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
        Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                    color: Colors.black),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Text(
            text1,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black),
          ),
        ),
        Spacer(),
      ],
    );
  }
}