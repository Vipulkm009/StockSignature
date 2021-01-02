import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/screens/user/dashboard.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';
import 'package:stock_signature/services/auth_service.dart';

class Login extends StatefulWidget {
  static String id = "LogIn";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextInputDecoration.copyWith(
                  hintText: 'Enter your Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextInputDecoration.copyWith(
                  hintText: 'Enter your Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: RoundButton(
                buttonTitle: 'Log In',
                height: 30.0,
                minimumWidth: 300.0,
                fontsize: 20.0,
                onPressed: () async {
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null)
                      Navigator.pushNamed(context, Dashboard.id);
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
