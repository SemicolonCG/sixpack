import 'package:flutter/material.dart';
import 'package:sixpack/subpages/exerices.dart';

class ScheduleTasks extends StatelessWidget {
  final List<String> items;

  const ScheduleTasks({Key? key, required this.items}) : super(key: key);
  // final items = List<String>.generate(10000, (i) => "Day $i");

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${items[index]}',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExercisesList()),
              );
            },
          );
        },
      ),
    );
  }
}
