import 'package:dashboardapp/utils/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int activeindex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
         PieChartData(
        pieTouchData: PieTouchData(
    enabled: true,
           
    touchCallback: (FlTouchEvent event, pieTouchResponse) {
      activeindex = pieTouchResponse?.touchedSection?.touchedSectionIndex?? -1;
      print("activeindex $activeindex");
      setState(() {});
    }),
        centerSpaceRadius: 40,
        sections: [
          PieChartSectionData(
    color: greyColor,
    value: 40,
    showTitle: false,
    radius:  (activeindex==0)?20:15,
          ),
          PieChartSectionData(
    color: blueColor1,
    value: 25,
    showTitle: false,
    radius:  (activeindex==1)?20:15,
          ),
          PieChartSectionData(
    color: blueColor2,
    value: 22,
    showTitle: false,
    radius:  (activeindex==2)?20:15,
          ),
          PieChartSectionData(
    color: blueColor3,
    value: 20,
    showTitle: false,
    radius:  (activeindex==3)?20:15,
          ),
        ],
      ));
  }
}
