import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInBLoC {
  static final SignInBLoC _bloc = SignInBLoC._internal();
  factory SignInBLoC() => _bloc;
  SignInBLoC._internal();

  TextEditingController emailTextController, passwordTextController;

  void init() {
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  Future<bool> signIn() async {
    bool isError = true;
    String toastMessage;
    String email = emailTextController.text;
    String password = passwordTextController.text;
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      toastMessage = "You have successfully logged in!";
      isError = false;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found')
        toastMessage = "Please enter a correct username";
      else if (e.code == 'wrong-password')
        toastMessage = "You have entered a wrong password!";
      else if (e.code == 'invalid-email')
        toastMessage = "You have Entered a invalid email!";
      else if (e.code == 'user-disabled')
        toastMessage = "User has been disabled!";
    }
    Fluttertoast.showToast(
      msg: toastMessage,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: isError ? Colors.red : Colors.greenAccent,
      textColor: Colors.white,
      fontSize: 10,
    );
    if (isError) {
      return false;
    } else {
      return true;
    }
  }
}
