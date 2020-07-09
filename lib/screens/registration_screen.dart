import 'dart:ui';

import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/enter_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
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
              height: 8.0,
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
              height: 48.0,
            ),
            EnterButton(
              label: 'Register',
              colour: Colors.blueAccent,
              onPressed: ()  async{
                try{
               final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
               if(newUser!=null){
                 Navigator.pushNamed(context, ChatScreen.id);
               }
              }
              catch(e){
                print(e);
                }
              }
            )
          ],
        ),
      ),
    );
  }
}
