import 'package:flutter/material.dart';
import 'package:timer_tracker_app/custom%20widgets/customRaisedButton.dart';
import 'package:timer_tracker_app/pages/signInButton.dart';
import 'package:timer_tracker_app/pages/socialSignInButton.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 5,
      ),
      body: Container(
        color: Colors.lightGreen[400],
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                  child: Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              )),
              SizedBox(
                height: 32,
              ),
              SignInButton(
                text: 'Sign In with Email',
                textColor: Colors.black87,
                color: Colors.white,
                height: 50,
                onPressed: () {},
              ),
              SizedBox(
                height: 8.0,
              ),
              SocialSignInButton(
                assetName: 'assets/images/facebook-logo.png',
                text: 'Sign In with Facebook',
                textColor: Colors.white,
                color: Colors.indigo,
                height: 50,
                onPressed: () {},
              ),
              SizedBox(
                height: 8.0,
              ),
              SocialSignInButton(
                assetName: 'assets/images/google-logo.png',
                text: 'Sign In with Google',
                textColor: Colors.white,
                color: Colors.teal,
                height: 50,
                onPressed: () {},
              ),
              SizedBox(
                height: 8.0,
              ),
              Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),),
              SizedBox(
                height: 8.0,
              ),
              SignInButton(
                text: 'Sign In as a Guest',
                textColor: Colors.black,
                color: Colors.yellow[200],
                height: 50,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
