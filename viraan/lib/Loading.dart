import 'package:flutter/material.dart';
import 'LoadingBody.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEED8C1),
      body: LoadingBody(),
    );
  }
}
