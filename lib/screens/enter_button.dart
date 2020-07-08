import 'package:flutter/material.dart';

class EnterButton extends StatelessWidget {
  final String label;
  final Color colour;

  EnterButton({this.label, this.colour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(200.0),
        child: MaterialButton(
          onPressed: null,
          minWidth: 200.0,
          height: 42.0,
          child: Text(label),
        ),
      ),
    );
  }
}
