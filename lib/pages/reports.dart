import 'package:flutter/material.dart';
import 'package:sixpack/components/BMIcalculator.dart';
import 'package:sixpack/subpages/records.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  List<_WeightData> data = [
    _WeightData('Jan', 150),
    _WeightData('Feb', 100),
    _WeightData('Mar', 105),
    _WeightData('Apr', 100),
    _WeightData('May', 90),
    _WeightData('June', 80)
  ];

  List<_BMIData> bmidata = [
    _BMIData(DateTime.now(), 40),
  ];
  @override
  Widget build(BuildContext context) {
    //dialog

    return Column(
      children: [
        //totoal bar

        //history records

        TextButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Records()),
          ),
          child: Text('RECORDS'),
        ),

        //Initialize the chart widget
        SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          // Chart title
          title: ChartTitle(text: 'Half yearly weight analysis'),
          // Enable legend
          legend: Legend(isVisible: true),
          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<_WeightData, String>>[
            LineSeries<_WeightData, String>(
                dataSource: data,
                xValueMapper: (_WeightData weigh, _) => weigh.month,
                yValueMapper: (_WeightData weigh, _) => weigh.weight,
                name: 'Weight',

                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ],
        ),

        Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BMI (kg/m^2):'),
              TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => BMICalculator()),
                      ),
                  child: Text('EDIT'))
            ],
          ),
        ),
        //bmi index calc
        Expanded(
          child: Container(
            child: SfCartesianChart(
              primaryXAxis: DateTimeAxis(),
              series: <ChartSeries>[
                // Renders scatter chart
                ScatterSeries<_BMIData, DateTime>(
                    dataSource: bmidata,
                    xValueMapper: (_BMIData sales, _) => sales.x,
                    yValueMapper: (_BMIData sales, _) => sales.y)
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _WeightData {
  _WeightData(this.month, this.weight);

  final String month;
  final double weight;
}

class _BMIData {
  _BMIData(
    this.x,
    this.y,
  );

  final DateTime x;
  final double y;
}
