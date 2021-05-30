import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oak_social/screens/explore/explore.dart';
import 'package:oak_social/screens/home/home.dart';

class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;
  
  final tabs = [
    Home(),
    Explore(),
    Center(child: Text('Notifications')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // unselectedIconTheme: IconThemeData(
        //   color: Colors.black
        // ),
        // selectedIconTheme: IconThemeData(
        //   color: Colors.pink,
        //   opacity: 0.5,
        //   size: 20.0
        // ),
        unselectedItemColor: Color(0xFFCAE5DD),
        selectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
          // color: Colors.white
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
          // color: Colors.white
        ),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF4FAA8D),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Vector.svg'),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Vector-1.svg'),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/clarity_notification-line.svg'),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/images/Vector-2.svg'),
              label: 'Profile')
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}