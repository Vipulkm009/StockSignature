import 'package:flutter/material.dart';
import 'package:stock_signature/components/list_row.dart';
import 'package:stock_signature/components/pie_chart_view.dart';

class DashboardCard extends StatefulWidget {
  DashboardCard({this.title, this.list});

  final title;
  final list;

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  List<String> getList(var li) {
    List<String> l = [];
    for (var ele in li) {
      l.add(ele.name);
    }
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Card(
        color: Theme.of(context).cardTheme.color,
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              color: Theme.of(context).cardTheme.color,
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  ListRow(
                    list: getList(widget.list),
                  ),
                  PieChartView(
                    list: widget.list,
                  ),
                ],
              ),
            )
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
