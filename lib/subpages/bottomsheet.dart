import 'package:flutter/material.dart';

class BottomSheetWithPageView extends StatelessWidget {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: double.infinity,
        child: PageView(controller: _pageController, children: [
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 110,
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 130,
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 110,
          )
        ]));
  }
}
