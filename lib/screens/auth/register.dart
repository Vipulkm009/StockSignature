import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_signature/components/app_body.dart';
import 'package:stock_signature/components/rounded_button.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  static String id = 'Register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return AppBody(
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
                buttonTitle: 'Registration',
                height: 30.0,
                minimumWidth: 300.0,
                fontsize: 20.0,
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) Navigator.pop(context);
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
