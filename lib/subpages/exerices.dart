import 'package:flutter/material.dart';
import 'package:sixpack/components/bottom_sheet_content.dart';
import 'package:sixpack/components/topcard.dart';

class ExercisesList extends StatefulWidget {
  const ExercisesList({Key? key}) : super(key: key);

  @override
  _ExercisesListState createState() => _ExercisesListState();
}

class _ExercisesListState extends State<ExercisesList> {
  final titles = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk'
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCard(),
        Expanded(
          child: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Icon(icons[index]),
                  title: Text(titles[index]),
                  onTap: () {
                    _settingModalBottomSheet(context, _pageController);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

void _settingModalBottomSheet(context, pageController) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return Container(
          child: new PageView.builder(
            controller: pageController,
            itemCount: 17,
            itemBuilder: (context, index) {
              return BottomSheetContent(
                context: context,
                index: index,
              );
            },
          ),
        );
      });
}
