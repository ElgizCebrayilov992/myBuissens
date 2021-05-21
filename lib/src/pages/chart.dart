import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_business/core/base/base_stateless.dart';
import 'package:my_business/core/color/my_color.dart';

// ignore: must_be_immutable
class Chart extends BaseStateless {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text("of 128GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: MyColor.instance.oneDayColor,
    value: 10,
    showTitle: false,
    radius: 25,
  ),
   PieChartSectionData(
    color: MyColor.instance.monthDayColor,
    value: 15,
    showTitle: false,
    radius: 25,
  ),
   PieChartSectionData(
    color: MyColor.instance.allDayColor,
    value: 60,
    showTitle: false,
    radius: 25,
  ),
  
/*
  PieChartSectionData(
    color: MyColor.instance.yellowOrange.withOpacity(0.1),
    value: 15,
    showTitle: false,
    radius: 13,
  ),
  */
];
