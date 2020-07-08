import 'dart:ui';

import 'package:flutter/material.dart';
import 'input_field.dart';

class RegistrationScreen extends StatefulWidget {
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
            Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(hint: 'Enter your email', colour: Colors.blueAccent),
            InputField(
              hint: 'Enter your password',
              colour: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
