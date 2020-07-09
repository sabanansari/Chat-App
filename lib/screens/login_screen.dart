import 'package:flutter/material.dart';
import 'enter_button.dart';
import 'package:chat_app/constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
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
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email = value;
              },
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter the email'),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter the password'),
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
