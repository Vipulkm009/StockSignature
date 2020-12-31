import 'package:flutter/material.dart';
import 'package:stock_signature/screens/auth/login.dart';
import 'package:stock_signature/screens/auth/register.dart';
import 'package:stock_signature/screens/static/welcome_screen.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';
import 'screens/user/dashboard.dart';

void main() {
  generateColors();
  runApp(StockSignature());
}

class StockSignature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Dashboard(),
      initialRoute: WelcomeScreen.id,
      routes: {
        Dashboard.id: (context) => Dashboard(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
      },
    );
  }
}