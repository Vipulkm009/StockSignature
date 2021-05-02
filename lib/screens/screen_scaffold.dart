import 'package:flutter/material.dart';
import 'package:stock_signature/components/drawer_menu.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

import 'user/customer_screen.dart';
import 'user/dashboard.dart';
import 'user/product_screen.dart';
import 'user/report_screen.dart';
import 'user/vendor_screen.dart';

class ScreenScaffold extends StatefulWidget {
  static String id = 'ScreenScaffold';
  @override
  _ScreenScaffoldState createState() => _ScreenScaffoldState();
}

class _ScreenScaffoldState extends State<ScreenScaffold> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    ProductScreen(),
    CustomerScreen(),
    Dashboard(),
    VendorScreen(),
    ReportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Signature'),
        elevation: 12.0,
      ),
      drawer: DrawerMenu(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            title: Text('Product'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Customer'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.desktop_windows),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            title: Text('Vendors'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            title: Text('Reports'),
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onPressing() {
    setState(() {
      _currentIndex = 4;
    });
  }
}
