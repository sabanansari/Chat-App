import 'dart:ui';

import 'package:chat_app/screens/enter_button.dart';
import 'package:flutter/material.dart';
import 'input_field.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(hint: 'Enter your email', colour: Colors.blueAccent),
            SizedBox(
              height: 10.0,
            ),
            InputField(
              hint: 'Enter your password',
              colour: Colors.blueAccent,
            ),
            SizedBox(
              height: 48.0,
            ),
            EnterButton(
              label: 'Register',
              colour: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
