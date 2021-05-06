import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.lightBlue,
    appBarTheme: AppBarTheme(
      color: Colors.lightBlue,
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.lightBlue,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.white70,
        fontSize: 17.0,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        color: Colors.teal,
        fontSize: 10.0,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.teal,
        fontSize: 10.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blueGrey[900],
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey[900],
      iconTheme: IconThemeData(
        color: Colors.blue[100],
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.blueGrey[900],
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
      size: 22.0,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.blue[100],
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.blue[200],
        fontSize: 17.0,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blueGrey[900],
      selectedLabelStyle: TextStyle(
        color: Colors.teal,
        fontSize: 10.0,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.teal,
        fontSize: 10.0,
      ),
    ),
  );
}
