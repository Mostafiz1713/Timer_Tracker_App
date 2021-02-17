import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class User {
  User({@required this.uid});
  final String uid;
}

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  User _userFromFireBase(User user){
    if(user == null){
      return null;
    }
    return User(uid: user.uid);
  }

  Future<User> currentUser() async {
    final user = _firebaseAuth.currentUser;
    return _userFromFireBase(user);
  }

  Future<User> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFireBase(authResult.user);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
