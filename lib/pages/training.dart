import 'package:flutter/material.dart';
import 'package:sixpack/components/schedule.dart';
import 'package:sixpack/components/topcard.dart';

final items = List<String>.generate(30, (i) => "Day $i");

class Training extends StatelessWidget {
  const Training({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopCard(),
        Expanded(child: ScheduleTasks(items: items)),
      ],
    );
  }
}
