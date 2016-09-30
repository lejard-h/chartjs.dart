// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.

// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Project: https://github.com/nnnick/Chart.js
// Definitions by: Steve Fenton <https://github.com/Steve-Fenton>
// Definitions: https://github.com/borisyankov/DefinitelyTyped

@JS()
library chartjs;

import "dart:html";

import "package:func/func.dart";
import "package:js/js.dart";
import 'line.dart';

@anonymous
@JS()
class ChartDataSet {
    external factory ChartDataSet({String label,
    List<String> borderColor,
    List<String> backgroundColor,
    List<dynamic> data,
    num borderWidth,
    String type});

    external String get type;

    external set type(String v);

    external String get label;

    external set label(String v);

    external List<String> get borderColor;

    external set borderColor(List<String> v);

    external List<String> get backgroundColor;

    external set backgroundColor(List<String> v);

    external num get borderWidth;

    external set borderWidth(num v);

    external List<dynamic> get data;

    external set data(List<dynamic> v);
}

@anonymous
@JS()
class DataPoint {

    external factory DataPoint({
    num x,
    num y
    });

    external num get x;

    external num get y;

    external set y(num v);

    external set x(num v);

}

@anonymous
@JS()
class Scales {

    external factory Scales({
    List<Axis> yAxes,
    List<Axis> xAxes,
    });

    external List<Axis> get yAxes;

    external List<Axis> get xAxes;

    external set yAxes(List<Axis> v);

    external set xAxes(List<Axis> v);

}

@anonymous
@JS()
class Axis {

    external factory Axis({
    Ticks ticks,
    String type,
    String position,
    bool display,
    bool stacked
    });

    external bool get stacked;

    external set stacked(bool v);

    external bool get display;

    external set display(bool v);

    external String get type;

    external String get position;

    external set type(String v);

    external set position(String v);

    external Ticks get ticks;

    external set ticks(Ticks v);

}

@anonymous
@JS()
class Ticks {
    external factory Ticks({
    bool beginAtZero
    });

    external bool get beginAtZero;

    external set beginAtZero(bool v);
}

class HoverConfiguration {
    external factory HoverConfiguration({String mode});

    external String get mode;

    external set mode(String v);
}

@anonymous
@JS()
class ChartData {
    external factory ChartData({
    List<String> labels,
    List<ChartDataSet> datasets,
    List<String> xLabels,
    List<String> yLabels
    });

    external List<String> get labels;

    external set labels(List<String> v);

    external List<ChartDataSet> get datasets;

    external set datasets(List<ChartDataSet> v);

    external List<String> get xLabels;

    external set xLabels(List<String> v);

    external List<String> get yLabels;

    external set yLabels(List<String> v);

}


//TODO
@anonymous
@JS()
class TitleConfiguration {
}

//TODO
@anonymous
@JS()
class LegendConfiguration {
}

//TODO
@anonymous
@JS()
class LegendLabelConfiguration {
}

//TODO
@anonymous
@JS()
class TooltipConfiguration {
}

//TODO
@anonymous
@JS()
class TooltipCallbacks {
}

//TODO
@anonymous
@JS()
class AnimationConfiguration {
}

//TODO
@anonymous
@JS()
class ElementConfiguration {
}

//TODO
@anonymous
@JS()
class ArcConfiguration {
}

//TODO
@anonymous
@JS()
class LineConfiguration {
}

//TODO
@anonymous
@JS()
class PointConfiguration {
}

//TODO
@anonymous
@JS()
class RectangleConfiguration {
}

@anonymous
@JS()
class GlobalChartSettings extends ChartSettings {
    external factory GlobalChartSettings({
    Scales scales, bool responsive, HoverConfiguration hover,
    Function onClick, Function legendCallback, Function onResize,
    List<String> events, num responsiveAnimationDuration,
    bool maintainAspectRatio, String defaultColor, String defaultFontFamily,
    num defaultFontSize, String defaultFontStyle});

    external String get defaultColor;

    external num get defaultFontSize;

    external String get defaultFontFamily;

    external String get defaultFontStyle;

    external set defaultColor(String v);

    external set defaultFontSize(num v);

    external set defaultFontFamily(String v);

    external set defaultFontStyle(String v);
}

@anonymous
@JS()
class ChartSettings {
    external factory ChartSettings(
        {Scales scales, bool responsive, HoverConfiguration hover, Function onClick, Function legendCallback, Function onResize,
        List<String> events, num responsiveAnimationDuration, bool maintainAspectRatio});

    external bool get responsive;

    external set responsive(bool v);

    external Scales get scales;

    external set scales(Scales v);

    external HoverConfiguration get hover;

    external set hover(HoverConfiguration v);

    external Function get onClick;

    external set onClick(Function v);

    external Function get onResize;

    external set onResize(Function v);

    external Function get legendCallback;

    external set legendCallback(Function v);

    external List<String> get events;

    external set events(List<String> v);

    external num get responsiveAnimationDuration;

    external set responsiveAnimationDuration(num v);

    external bool get maintainAspectRatio;

    external set maintainAspectRatio(bool v);
}


@anonymous
@JS()
class ChartConfiguration {

    external factory ChartConfiguration({
    String type,
    ChartData data,
    ChartSettings options
    });

    external String get type;

    external set type(String v);

    external ChartData get data;

    external set data(ChartData v);

    external ChartSettings get options;

    external set options(ChartSettings v);

}

@JS()
class Chart {

    external static Chart Line(CanvasRenderingContext2D context, LineChartConfiguration config);

    external Chart(CanvasRenderingContext2D context, ChartConfiguration config);

    external static ChartDefaults get defaults;

    external static set defaults(ChartDefaults v);
}

@anonymous
@JS()
class ChartDefaults {
    external GlobalChartSettings get global;

    external LineChartSettings get line;
}