import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:viraan/models/MyUser.dart';
import 'package:firebase_database/firebase_database.dart';

class SignUpBLoC {
  static final SignUpBLoC _bloc = SignUpBLoC._internal();

  factory SignUpBLoC() => _bloc;
  SignUpBLoC._internal();
  TextEditingController nameTextController,
      emailTextController,
      passwordTextController,
      confirmPasswordTextController,
      addressTextController;

  void init() {
    nameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    confirmPasswordTextController = TextEditingController();
    addressTextController= TextEditingController();
  }

  Future<bool> signUp() async {
    print(nameTextController);
    String toastMessage;
    bool isError = true;
    try {
      UserCredential cred =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextController.text,
        password: passwordTextController.text,
      );
      toastMessage = "Successfully Logged In!";
      isError = false;
      String uid = cred.user.uid;
      DatabaseReference ref = FirebaseDatabase.instance.reference();
      DatabaseReference userRef = ref.child('users/$uid');
      MyUser user = MyUser(
        email: emailTextController.text,
        name :nameTextController.text,
        address :addressTextController.text,
      );
      await userRef.set(user.toMap());
      isError=false;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use')
        toastMessage = "Email already in use";
      else if (e.code == 'weak-password')
        toastMessage = "Please enter a strong password";
      else if (e.code == 'invalid-email')
        toastMessage = "Entered a invalid email";
      else if (e.code == 'operation-not-allowed')
        toastMessage = "Operation not allowed";
    } finally {
      Fluttertoast.showToast(
        msg: toastMessage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: isError ? Colors.red : Colors.greenAccent,
        textColor: Colors.white,
        fontSize: 10,
      );
      if(isError)
        {
          return false;
        }
      else{
        return true;
      }
    }
  }
}