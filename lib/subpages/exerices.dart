import 'package:flutter/material.dart';
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
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new PageView(
                children: [
                  Text('data'),
                  Text('data'),
                ],
              ),
              new ListTile(
                leading: new Icon(Icons.videocam),
                title: new Text('Video'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}