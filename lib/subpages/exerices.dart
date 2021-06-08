import 'package:flutter/material.dart';
import 'package:sixpack/components/topcard.dart';
import 'package:sixpack/subpages/bottomsheet.dart';

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
                    _settingModalBottomSheet(context);
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              Expanded(child: new BottomSheetWithPageView()),
              Expanded(
                child: new ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text(
                      'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type '),
                ),
              ),
            ],
          ),
        );
      });
}
