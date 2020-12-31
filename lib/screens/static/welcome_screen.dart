import 'package:flutter/material.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/screens/auth/login.dart';
import 'package:stock_signature/screens/auth/register.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'WelcomeScreen';
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RoundButton(
                buttonTitle: 'Log In',
                height: 30.0,
                minimumWidth: 300.0,
                fontsize: 20.0,
                onPressed: () {
                  Navigator.pushNamed(context, Login.id);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RoundButton(
                buttonTitle: 'Registration',
                height: 30.0,
                minimumWidth: 300.0,
                fontsize: 20.0,
                onPressed: () {
                  Navigator.pushNamed(context, Register.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
