import 'package:flutter/material.dart';
import 'package:stock_signature/components/dashboard_card.dart';
import 'package:stock_signature/components/drawer_menu.dart';
import '../../utilities/constants/global_constants.dart';

class Dashboard extends StatefulWidget {
  static String id = 'Dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Signature'),
        elevation: 12.0,
      ),
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    width: 1.0,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  'Dashboard>',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  DashboardCard(
                    title: 'Product',
                    list: kCategoryList,
                  ),
                  DashboardCard(
                    title: 'Sub-Categories',
                    list: kCategoryList[0].list,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
