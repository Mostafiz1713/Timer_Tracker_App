import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:timer_tracker_app/pages/homePage.dart';
import 'package:timer_tracker_app/pages/signIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  void initState() {
    Future<FirebaseApp> _initialization = Firebase.initializeApp();
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
		User user = await	FirebaseAuth.instance.currentUser;
		_updateUser(user);
	}
	User _user;



	void _updateUser(User user){
	  setState(() {
	    _user = user;
	  });
  }

  @override
  Widget build(BuildContext context) {
    if(_user == null){
      return SignInPage(
        onSignIn: _updateUser,
      );

    }else{
      return HomePage(
				onSignOut: () => _updateUser(null),
			);
    }
  }
}
