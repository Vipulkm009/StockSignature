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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            for (var element in widget.list)
              PieChartList(
                text: element,
                index: widget.list.indexOf(element),
              )
          ],
        ),
      ),
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
            width: 20,
          ),
          Text(widget.text),
        ],
      ),
    );
  }
}
