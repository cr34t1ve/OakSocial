import 'package:flutter/material.dart';
import 'package:oak_social/components/pagecontent.dart';
import 'package:oak_social/enum/constants.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: pageData.length,
              itemBuilder: (context, index) => PageContent(
                text: pageData[index]['text'],
                image: pageData[index]['image'],
                text1: pageData[index]['subtitle'],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      pageData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          color: currentPage == index ? Color(0xFF4EAD8B) : Color(0xFFC4C4C4) ,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


