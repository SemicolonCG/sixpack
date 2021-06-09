import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  final String mainTitle;
  final String subTitle;
  final String imgSrc;

  const TopCard(
      {Key? key,
      required this.mainTitle,
      required this.subTitle,
      required this.imgSrc})
      : super(key: key);

  @override
  _TopCardState createState() => _TopCardState();
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        color: Colors.orange,
        child: Row(
          children: [
            Expanded(
              flex: 66,
              child: Column(
                children: [
                  Expanded(
                    flex: 50,
                    child: Center(child: Text(widget.subTitle)),
                  ),
                  Expanded(flex: 25, child: Text(widget.mainTitle)),
                  Expanded(flex: 25, child: Text('label gies here')),
                ],
              ),
            ),
            Expanded(
              flex: 33,
              child: Image(
                image: AssetImage(widget.imgSrc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
