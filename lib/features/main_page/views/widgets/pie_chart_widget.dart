import 'package:beauty_station_web/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('الصالون', 50, ColorManager.mainColor),
      ChartData('خبير التجميل', 35, ColorManager.secondaryColor),
    ];
    return Center(
        child: Container(
            width: 0.3.sw,
            decoration: BoxDecoration(
              color: ColorManager.neutralWhite,
              borderRadius: BorderRadius.circular(25),
            ),
            child: SfCircularChart(
                title: const ChartTitle(
                    text: 'نسبة العملاء بين الصالونات و خبراء التجميل'),
                legend: const Legend(isVisible: true),
                series: <CircularSeries>[
                  // Render pie chart
                  PieSeries<ChartData, String>(
                    dataSource: chartData,
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    dataLabelMapper: (ChartData data, _) => '${data.y}%',
                    enableTooltip: true,
                    explodeAll: true,
                    dataLabelSettings: const DataLabelSettings(
                      isVisible: true,
                      labelPosition: ChartDataLabelPosition.outside,
                      labelIntersectAction: LabelIntersectAction.none,
                      connectorLineSettings: ConnectorLineSettings(
                        type: ConnectorType.line,
                        color: ColorManager.black,
                      ),
                    ),
                  )
                ])));
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}