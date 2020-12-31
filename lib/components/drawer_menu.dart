import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
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
        ],
      ),
    );
  }
}
