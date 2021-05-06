import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

class PieChartView extends StatefulWidget {
  final list;

  PieChartView({this.list});

  @override
  _PieChartViewState createState() => _PieChartViewState();
}

class _PieChartViewState extends State<PieChartView> {
  Map<String, double> dataMap;

  Map getDataMap() {
    Map<String, double> data = new Map();
    for (var ele in widget.list) {
      data['${ele.name}'] = ele.sum;
    }
    return data;
  }

  @override
  void initState() {
    dataMap = getDataMap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: PieChart(
          dataMap: dataMap,
          chartType: ChartType.ring,
          chartRadius: 125.0,
          animationDuration: Duration(milliseconds: 1000),
          initialAngleInDegree: 270.0,
          colorList: kPieChartColors,
          legendOptions: LegendOptions(
            showLegends: false,
          ),
          chartValuesOptions: ChartValuesOptions(
            decimalPlaces: 2,
            showChartValues: true,
            showChartValueBackground: true,
            showChartValuesInPercentage: true,
            showChartValuesOutside: true,
            chartValueBackgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

// LayoutBuilder(
// builder: (context, constraint) => Container(
// decoration: BoxDecoration(
// color: Colors.black,
// shape: BoxShape.circle,
// boxShadow: [
// BoxShadow(
// spreadRadius: -10,
// blurRadius: 17,
// offset: Offset(-5, -5),
// color: Colors.black45,
// ),
// BoxShadow(
// spreadRadius: -2,
// blurRadius: 10,
// offset: Offset(7, 7),
// color: Colors.black26,
// ),
// ],
// ),
// child: Stack(
// children: [
// Center(
// child: SizedBox(
// width: constraint.maxWidth * 0.6,
// child: CustomPaint(
// child: Center(),
// foregroundPainter: PieChart(
// width: constraint.maxWidth * 0.5,
// list: widget.list,
// ),
// ),
// ),
// ),
// Center(
// child: Container(
// height: constraint.maxWidth * 0.4,
// decoration: BoxDecoration(
// color: Colors.black,
// shape: BoxShape.circle,
// boxShadow: [
// BoxShadow(
// blurRadius: 1,
// offset: Offset(-1, -1),
// color: Colors.black45,
// ),
// BoxShadow(
// spreadRadius: -2,
// blurRadius: 10,
// offset: Offset(5, 5),
// color: Colors.white.withOpacity(0.5),
// ),
// ],
// ),
// child: Center(
// child: Text('\$1280.20'),
// ),
// ),
// ),
// ],
// ),
// ),
// ),
