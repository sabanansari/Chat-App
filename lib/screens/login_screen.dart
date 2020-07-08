import 'package:flutter/material.dart';
import 'enter_button.dart';
import 'input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              height: 48.0,
            ),
            InputField(
              hint: 'Enter your email',
              colour: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 8.0,
            ),
            InputField(
              hint: 'Enter your password',
              colour: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: EnterButton(
                label: 'Login',
                colour: Colors.lightBlueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
