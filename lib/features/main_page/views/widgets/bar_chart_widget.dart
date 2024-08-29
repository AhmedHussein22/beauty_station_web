import 'package:beauty_solution_web/features/main_page/controller/main_controller.dart';
import 'package:beauty_solution_web/utils/app_utils/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (mainController) {
        return Container(
          width: 0.6.sw,
          height: 0.3.sh,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: SfCartesianChart(primaryXAxis: const CategoryAxis(), title: const ChartTitle(text: 'نسبة العملاء بين المدن'), series: <CartesianSeries>[
            ColumnSeries<ChartData, String>(dataSource: mainController.cities, pointColorMapper: (ChartData data, _) => data.color, xValueMapper: (ChartData data, _) => data.x, yValueMapper: (ChartData data, _) => data.y, dataLabelSettings: const DataLabelSettings(isVisible: true))
          ]).horizontalPadding(20),
        );
      },
    );
  }
}

class ChartData {
  ChartData(
    this.id,
    this.x,
    this.y,
    this.color,
  );
  final String x;
  int y;
  final Color color;
  final int id;
}
