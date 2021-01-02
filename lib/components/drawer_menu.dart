import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/screens/static/welcome_screen.dart';

class DrawerMenu extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  // ignore: deprecated_member_use
  final FirebaseUser loggedInUser;

  DrawerMenu({this.loggedInUser});
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
          Text(
            loggedInUser.email,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
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
