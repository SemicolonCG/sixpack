import 'package:flutter/material.dart';
import 'package:sixpack/components/schedule.dart';
import 'package:sixpack/components/topcard.dart';

final items = List<String>.generate(30, (i) => "Day $i");

class ABSPages extends StatefulWidget {
  final String mainTitle;

  final String subTitle;
  final String imgSrc;

  const ABSPages(
      {Key? key,
      required this.mainTitle,
      required this.subTitle,
      required this.imgSrc})
      : super(key: key);

  @override
  _ABSPagesState createState() => _ABSPagesState();
}

class _ABSPagesState extends State<ABSPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Image(image: AssetImage(widget.imgSrc)),
          ),
          Expanded(
            child: ScheduleTasks(
              days: items,
              imgSrc: widget.imgSrc,
            ),
          ),
        ],
      ),
    );
  }
}
