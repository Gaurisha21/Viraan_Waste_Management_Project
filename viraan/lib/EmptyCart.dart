import 'package:flutter/material.dart';
import 'EmptyCartBody.dart';

class EmptyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEED8C1),
      body: EmptyCartBody(),
    );
  }
}
