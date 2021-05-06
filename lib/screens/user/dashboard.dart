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

  List<DashboardCard> dashboardCardList = [
    DashboardCard(
      title: 'Categories',
      list: kCategoryList,
    ),
    DashboardCard(
      title: 'Sub-Categories',
      list: kCategoryList[0].list,
    ),
    DashboardCard(
      title: 'Product',
      list: kCategoryList[0].list[0].list,
    ),
  ];

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
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Dashboard>',
                style: Theme.of(context).textTheme.subtitle,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return dashboardCardList[index];
                }),
          ),
        ],
      ),
    );
  }
}
