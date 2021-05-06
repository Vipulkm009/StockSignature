import 'package:flutter/material.dart';
import 'package:stock_signature/components/app_body.dart';
import 'package:stock_signature/components/bottom_appbar.dart';
import 'package:stock_signature/components/dashboard_card.dart';
import 'package:stock_signature/components/drawer_menu.dart';
import '../../utilities/constants/global_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatefulWidget {
  static String id = 'Dashboard';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _auth = FirebaseAuth.instance;
  final List<DashboardCard> cardList = [
    DashboardCard(
      title: 'Product',
      list: kCategoryList,
    ),
    DashboardCard(
      title: 'Sub-Categories',
      list: kCategoryList[0].list,
    )
  ];
  User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print('----' + loggedInUser.email + '----');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
