import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:timer_tracker_app/custom%20widgets/customRaisedButton.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    double height,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          ),
          color: color,
          borderRadius: 10,
          height: height,
          onPressed: onPressed,
        );
}
