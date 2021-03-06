import 'dart:ui' as ui show Size;

import 'package:flutter_charts/src/chart/options.dart';
import 'package:flutter_charts/src/chart/data.dart';
import '../layouters.dart';

import 'presenters.dart';


/// Layouter of the vertical bar chart.
///
/// The core override is setting the [presenterCreator] -
/// object which makes instances of [VerticalBarPresenter]s,
/// used to present each data value.
class VerticalBarChartLayouter extends ChartLayouter {
  VerticalBarChartLayouter({
    ui.Size chartArea,
    ChartData chartData,
    ChartOptions chartOptions,
  })
      : super(
    chartArea: chartArea,
    chartData: chartData,
    chartOptions: chartOptions,
  ) {
    presenterCreator = new VerticalBarLeafCreator();
  }
}
