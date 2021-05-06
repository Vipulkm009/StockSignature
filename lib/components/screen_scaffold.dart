import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stock_signature/components/drawer_menu.dart';
import 'package:stock_signature/screens/user/customer_screen.dart';
import 'package:stock_signature/screens/user/dashboard.dart';
import 'package:stock_signature/screens/user/product_screen.dart';
import 'package:stock_signature/screens/user/report_screen.dart';
import 'package:stock_signature/screens/user/vendor_screen.dart';
import 'package:stock_signature/utilities/classes/app_state_notifiers.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

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
        // leading: Icon(
        //   Icons.menu,
        //   size: Theme.of(context).iconTheme.size,
        // ),
        title: Text(
          'Stock Signature',
          style: Theme.of(context).appBarTheme.textTheme.title,
        ),
        elevation: 12.0,
        actions: <Widget>[
          Switch(
            value: Provider.of<AppStateNotifier>(context).isDarkMode,
            onChanged: (boolVal) {
              Provider.of<AppStateNotifier>(context).updateTheme(boolVal);
            },
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
      ),
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
            icon: Icon(Icons.file_present),
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
}
