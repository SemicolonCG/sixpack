import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  final Weight = TextEditingController();
  final Height = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Reset settings?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: Weight,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: '0.00 KG'),
                )),
          ),
          Expanded(
            child: Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: Height,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: '0.0'),
                )),
          ),
        ],
      ),
      actions: [
        Expanded(
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('CANCEL'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('ACCEPT'),
          ),
        ),
      ],
    );
  }
}
