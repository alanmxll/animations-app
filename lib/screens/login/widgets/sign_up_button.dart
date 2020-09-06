import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160.0),
      onPressed: () {},
      child: Text(
        'Don\'t have an account? Register!',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          fontSize: 12.0,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
