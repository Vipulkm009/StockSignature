import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

class ListRow extends StatefulWidget {
  final list;

  ListRow({this.list});

  @override
  _ListRowState createState() => _ListRowState();
}

class _ListRowState extends State<ListRow> {
  List<PieChartList> pieChartList = [];

  void computeList() {
    pieChartList.clear();
    for (var element in widget.list) {
      pieChartList.add(PieChartList(
        text: element,
        index: widget.list.indexOf(element),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    computeList();
    return Expanded(
      flex: 3,
      child: Container(
        height: 200.0,
        child: Expanded(
          child: ListView.builder(
            itemCount: pieChartList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return pieChartList[index];
            },
          ),
        ),
      ),
      //     SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       for (var element in widget.list)
      //         PieChartList(
      //           text: element,
      //           index: widget.list.indexOf(element),
      //         )
      //     ],
      //   ),
      // ),
    );
  }
}

class PieChartList extends StatefulWidget {
  final index;
  final text;

  PieChartList({this.text, this.index});

  @override
  _PieChartList createState() => _PieChartList();
}

class _PieChartList extends State<PieChartList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPieChartColors.elementAt(widget.index),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              widget.text,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
