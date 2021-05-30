import 'package:flutter/material.dart';
import 'package:oak_social/enum/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
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
                'Direct Message',
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
      body: Column(
        children: [
          Container(
            height: 250.0,
            width: 335.0,
            child: TabBarView(
              controller: _tabController,
              children: [
                Tab(
                  child: ListView.builder(
                    itemCount: chatList0.length,
                    itemBuilder: (context, index){
                      return ChatTile(
                        image: chatList0[index]['image'],
                        name: chatList0[index]['name'],
                      );
                    },
                  )
                ),
                Tab(
                  child: ListView.builder(
                    itemCount: chatList0.length,
                    itemBuilder: (context, index){
                      return ChatTile(
                        image: chatList1[index]['image'],
                        name: chatList1[index]['name'],
                      );
                    },
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key key,
    this.image,
    this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        height: 52.0,
      ),
      title: Text(
        name,
        style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
            color: Color(0xFF454545)),
      ),
      subtitle: Text(
        'You are welcome',
        style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            color: Color(0xFFA1A1A1)),
      ),
      trailing: Text(
        '4:42 AM',
        style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            color: Color(0xFFA1A1A1)),
      ),
    );
  }
}
