import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/screens/static/welcome_screen.dart';
import 'package:stock_signature/screens/user/add_product.dart';
import 'package:stock_signature/screens/user/dashboard.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu();

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  // ignore: deprecated_member_use
  void getCurrentUser() {
    try {
      // ignore: deprecated_member_use
      FirebaseUser user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Stock',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text(
                  'Signature',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: RoundButton(
              buttonTitle: 'Dashboard',
              height: 30.0,
              minimumWidth: 300.0,
              fontsize: 20.0,
              onPressed: () {
                Navigator.pushNamed(context, Dashboard.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: RoundButton(
              buttonTitle: 'Add Product',
              height: 30.0,
              minimumWidth: 300.0,
              fontsize: 20.0,
              onPressed: () {
                Navigator.pushNamed(context, AddProduct.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: RoundButton(
              buttonTitle: 'Add Sales Report',
              height: 30.0,
              minimumWidth: 300.0,
              fontsize: 20.0,
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: RoundButton(
              buttonTitle: 'Add Purchase Report',
              height: 30.0,
              minimumWidth: 300.0,
              fontsize: 20.0,
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: RoundButton(
              buttonTitle: 'Log Out',
              height: 30.0,
              minimumWidth: 300.0,
              fontsize: 20.0,
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
