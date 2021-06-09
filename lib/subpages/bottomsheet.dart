import 'package:flutter/material.dart';
import 'package:sixpack/components/video_app.dart';

class BottomSheetWithPageView extends StatelessWidget {
  final int index;
  final BuildContext context;

  BottomSheetWithPageView({required this.index, required this.context});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 300,
      child: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 130,
            child: Text('ado'),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 220,
            child: VideoPlayerApp(),
          ),
        ],
      ),
    );
  }
}
