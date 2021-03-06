import 'dart:ui' as ui show Color;
import 'package:flutter/material.dart' as material show Colors;

/// Options for chart allow to configure certain sizes, colors, and layout.
///
/// Generally, some defaults are provided here. Some options, mostly sizing
/// related, may be overriden or adjusted by the chart auto-layout,
/// see [SimpleChartLayouter].
class ChartOptions {

  /// Defines how to create and layout chart's Y labels: either from user
  /// defined Y labels, or from auto-created Y labels from data.
  ///
  /// - If `true`, a "manual" layout of Y axis is used.
  ///   This requires [ChartData.yLabels] to be defined.
  ///   Labels can be Strings or numbers..
  ///   Current layout implementation splits Y axis into even number of
  ///   sections, each of [ChartData.yLabels] labels one horizontal guide line.
  /// - If `false`, a "auto" layout of Y axis is used.
  ///   - Current auto-layout implementation smartly creates
  ///     a limited number of Y labels from data, so that Y labels do not
  ///     crowd, and little Y space is wasted on top.

  bool useUserProvidedYLabels = false;

  /// Shows largest value on very top of the chart grid, to save space.
  bool largestValuePointOnVeryTop = true; // false not supported yet

  /// Number of grid lines and y axis labels. Not implemented
  int maxNumYLabels = 4;

  /// Color defaults
  ui.Color gridLinesColor = material.Colors.grey;
  ui.Color xLabelsColor = material.Colors
      .grey; // or const ui.Color(0xFFEEEEEE)

  /// Length of ticks around the grid rectangle.
  /// Autolayout can increase these lengths, to fit labels below them.
  double xTopMinTicksHeight = 6.0; // todo -1 check if not applied?
  double yRightMinTicksWidth = 6.0;
  double xBottomMinTicksHeight = 6.0;
  double yLeftMinTicksWidth = 6.0;

  // todo 1 in LB, LR, separate top, bottom, left, right, and only keep those used

  /// Pad space around X labels.
  double xLabelsPadTB = 12.0; // top and bottom
  double xLabelsPadLR = 12.0; // left and right - Unused

  /// Pad space around Y labels.
  double yLabelsPadTB = 12.0; // todo 0 unused
  double yLabelsPadLR = 12.0;

  /// Side of the square used to show color of lines/bars
  /// together with data series name (legend name).
  double legendColorIndicatorWidth = 20.0;
  double legendColorIndicatorPaddingLR = 1.0;
  double legendContainerMarginLR = 12.0; // todo 1 make = xLabelsPadLR;
  double legendContainerMarginTB = 6.0;

  /// Portion of horizontal (X) grid width, used to display presenter leafs.
  ///
  /// For example, for the bar chart, this represents the portion of one
  /// label width along X axis,
  /// which displays the bars (grouped or stacked).
  double gridStepWidthPortionUsedByAtomicPresenter = 0.75;

  String yLabelUnits = "";

  String toLabel(String label) => label + yLabelUnits;

  String valueToLabel(num value) {
    // if there are >= 3 < 6 decimal digits, replace with K (etc)
    // todo 1 add an option for how to format; a method or a formatter.
    String val = value.toString();
    if (val.endsWith("000000000")) val = val.substring(0, val.length - 9) + "B";
    if (val.endsWith("000000")) val = val.substring(0, val.length - 6) + "M";
    if (val.endsWith("000")) val = val.substring(0, val.length - 3) + "K";

    return val + yLabelUnits;
  }

}
