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
      body: Center(
        child: _List.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
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
            label: 'Training',
            icon: Icon(Icons.sports),
          ),
          BottomNavigationBarItem(
            label: 'Reports',
            icon: Icon(Icons.bar_chart),
          ),
          BottomNavigationBarItem(
            label: 'Me',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
