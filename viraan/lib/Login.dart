import 'package:flutter/material.dart';
import 'package:viraan/Backend/SignIn.dart';
import 'LoginBody.dart';
import 'body.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignInBLoC().init();
    return Scaffold(
      backgroundColor: Color(0xFFEED8C1),
      body: LoginBody(),
    );
  }
}
