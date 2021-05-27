import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 335,
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xFF4EAD8B))),
        color: Color(0xFF4EAD8B),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600,
              fontSize: 16),
        ),
        onPressed: press,
      ),
    );
  }
}
