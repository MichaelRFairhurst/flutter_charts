import 'dart:ui' as ui;

import '../presenters.dart' as presenters;
import '../line/presenters.dart' as line_presenters;

import '../painter.dart';


/// Paints the columns of the line chart.
///
/// The core override is the [drawPresentersColumns] method
/// which call on each column area of the chart, to paint the
/// [LineAndHotspotPresenter]s - painting a point and line for
/// each data value across series.
///
/// See [ChartPainter]
class LineChartPainter extends ChartPainter {

  /// See super [ChartPainter.drawPresentersColumns].
  void drawPresentersColumns(ui.Canvas canvas) {
    this.layouter.presentersColumns.presentersColumns
        .forEach((presenters.PresentersColumn presentersColumn) {
      presentersColumn.presenters
          .forEach((presenters.Presenter presenter) {
        line_presenters.LineAndHotspotPresenter presenterCast = presenter as line_presenters.LineAndHotspotPresenter;
        canvas.drawLine(
          presenterCast.linePresenter.from,
          presenterCast.linePresenter.to,
          presenterCast.linePresenter.paint,
        );
        canvas.drawCircle(
            presenterCast.offsetPoint,
            presenterCast.outerRadius,
            presenterCast.outerPaint);
        canvas.drawCircle(
            presenterCast.offsetPoint,
            presenterCast.innerRadius,
            presenterCast.innerPaint);
      });
    });
  }
}

