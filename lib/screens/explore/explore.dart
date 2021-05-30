import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          // isScrollable: true,
          // indicator: BoxDecoration(color: Colors.black),
          indicatorColor: Color(0xFF4EAD8B),
          // indicatorSize: ,
          // indicatorPadding: EdgeInsets.symmetric(horizontal: 40.0),
          labelColor: Color(0xFF4EAD8B),
          labelStyle: TextStyle(
              fontSize: 14,
              color: Colors.red,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w600),
          unselectedLabelColor: Color(0xFFA5AEBC),
          unselectedLabelStyle: TextStyle(
              fontSize: 16,
              color: Colors.red,
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400),
          tabs: [
            Tab(
                child: Center(
              child: Text(
                'Family Forum',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            )),
            Tab(
                child: Center(
              child: Text(
                'Photos',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            )),
            Tab(
                child: Center(
              child: Text(
                'Family Tree',
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            )),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/OakSocialLogo.png',
          height: 33,
        ),
      ),
      body: ListView(
        children: [
          PhotosPost(
            name: 'Sebastian Livingstone',
            image: 'assets/images/Ellipse 4-1.png',
            bannerImage: 'assets/images/Rectangle 26-1.png',
          ),
          PhotosPost(
            name: 'Grace Anton',
            image: 'assets/images/Ellipse 4.png',
            bannerImage: 'assets/images/Rectangle 26.png',
          ),
          PhotosPost(
            name: 'Sebastian Livingstone',
            image: 'assets/images/Ellipse 4-1.png',
            bannerImage: 'assets/images/Rectangle 26-1.png',
          ),
        ],
      ),
    );
  }
}

class PhotosPost extends StatelessWidget {
  const PhotosPost({Key key, this.image, this.name, this.bannerImage}) : super(key: key);
  final String image;
  final String name;
  final String bannerImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      height: 37.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: Colors.black.withOpacity(0.4)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Jun 10',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: Colors.black.withOpacity(0.4)),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Image.asset(
              bannerImage,
              height: 185.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/image 1.png',
                      height: 24.0,
                    ),
                    SizedBox(
                      width: 11.5,
                    ),
                    Icon(
                      Icons.add_circle,
                      size: 24.0,
                      color: Color(0xFF4EAD8B),
                    )
                  ],
                ),
                Text(
                  '1Comment',
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: Colors.black.withOpacity(0.4)),
                )
              ],
            ),
            RichText(
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF757575),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: '$name ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        // fontWeight: FontWeight.w600
                      )),
                  TextSpan(
                      text:
                          'Missing you guys! Just got gone with the confrence , time for some...  '),
                  TextSpan(
                      text: 'more',
                      style: TextStyle(
                        color: Color(0xFF4299E1),
                        fontSize: 12,
                        // fontWeight: FontWeight.w600
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
