import 'package:flutter/material.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEED8C1),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/icons/menu.png"),
          onPressed: () {},
        ),
      ),
      body: Body(),
    );
  }
}
