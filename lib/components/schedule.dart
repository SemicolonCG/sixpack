import 'package:flutter/material.dart';
import 'package:sixpack/subpages/exerices.dart';

class ScheduleTasks extends StatefulWidget {
  final List<String> days;
  final String imgSrc;

  const ScheduleTasks({Key? key, required this.days, required this.imgSrc})
      : super(key: key);

  @override
  _ScheduleTasksState createState() => _ScheduleTasksState();
}

class _ScheduleTasksState extends State<ScheduleTasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: widget.days.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${widget.days[index]}',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExercisesList(
                        days: '${widget.days[index]}',
                        mainTitle: '',
                        subTitle: '',
                        imgSrc: widget.imgSrc)),
              );
            },
          );
        },
      ),
    );
  }
}
