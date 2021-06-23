import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:sixpack/subpages/absPages.dart';

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  _TrainingState createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController();
    final _currentPageNotifier = ValueNotifier<int>(0);

    return Column(
      children: [
        Center(
          child: CirclePageIndicator(
            currentPageNotifier: _currentPageNotifier,
            itemCount: _pages.length,
          ),
        ),
        Expanded(
          child: PageView.builder(
            itemCount: _pages.length,
            controller: _pageController,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: _pages[index],
              );
            },
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
        ),
      ],
    );
  }
}

List _pages = [
  ABSPages(
    mainTitle: '',
    subTitle: '',
    imgSrc: 'assets/images/abs1.jpg',
  ),
  ABSPages(
    mainTitle: 'උදරීය මාංශ පේශි ගල් කරන්න',
    subTitle: 'මද්‍යම අදියර',
    imgSrc: 'assets/images/abs2.jpg',
  ),
  ABSPages(
    mainTitle: 'six pack හදන්න',
    subTitle: 'උසස් අදියර',
    imgSrc: 'assets/images/abs3.png',
  ),
];
