import 'package:flutter/material.dart';
import 'package:sixpack/pages/me.dart';
import 'package:sixpack/pages/reports.dart';
import 'package:sixpack/pages/training.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectIndex = 0;
  static const _List = [Training(), Reports(), Me()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //    leading: Icon(Icons.menu),
        title: Text(
          'දවස් 30 න්  Six Pack',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        actions: [
          Icon(
            Icons.flash_on,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.wallet_giftcard,
              color: Colors.lightBlueAccent,
            ),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.white,
        //  shadowColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: _List.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 14,
        currentIndex: _selectIndex,
        unselectedFontSize: 14,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'පුහුණුවීම්',
            icon: Icon(Icons.sports),
          ),
          BottomNavigationBarItem(
            label: 'වාර්තා',
            icon: Icon(Icons.bar_chart),
          ),
          BottomNavigationBarItem(
            label: 'මං',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
