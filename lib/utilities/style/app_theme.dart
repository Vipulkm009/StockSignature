import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    bottomAppBarColor: Colors.blue,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    buttonColor: Colors.teal[700],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.teal[700],
    ),
    cardTheme: CardTheme(
      color: Colors.white54,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.black,
        fontSize: 17.0,
      ),
      display1: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 8.0,
      selectedLabelStyle: TextStyle(
        fontSize: 10.0,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10.0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.lightBlue,
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey[900],
      iconTheme: IconThemeData(
        color: Colors.blue[100],
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.blue[100],
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    buttonColor: Colors.cyan[700],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.cyan[700],
    ),
    cardTheme: CardTheme(
      color: Colors.blueGrey[900],
      shadowColor: Colors.blue[100],
    ),
    iconTheme: IconThemeData(
      color: Colors.cyan,
    ),
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.cyan,
        fontSize: 20.0,
      ),
      subtitle: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 17.0,
      ),
      display1: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 14.0,
      ),
      display2: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 11.0,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.blueGrey[900],
      selectedItemColor: Colors.cyan[700],
      unselectedItemColor: Colors.blue[100],
      type: BottomNavigationBarType.fixed,
      elevation: 8.0,
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
