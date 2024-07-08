import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:beauty_station_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.45.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          title: const ChartTitle(text: 'نسبة العملاء بين المدن'),
          series: <CartesianSeries>[
            LineSeries<ChartData, String>(
                dataSource: [
                  ChartData('الرياض', 35, ColorManager.mainColor),
                  ChartData('جده', 23, ColorManager.secondaryColor),
                  ChartData("الخبر", 34, ColorManager.otherGreen0),
                  ChartData('الدمام', 25, ColorManager.neutral400),
                  ChartData('المدينه', 40, ColorManager.neutral950),
                ],
                pointColorMapper: (ChartData data, _) => data.color,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                dataLabelSettings: const DataLabelSettings(isVisible: true))
          ]).horizontalPadding(20),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
