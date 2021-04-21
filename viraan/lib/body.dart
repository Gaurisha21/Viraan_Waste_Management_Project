import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logo.png"),
        SizedBox(
          height: 15.0,
        ),
        Image.asset("assets/images/VIRAAN.png"),
        SizedBox(
          height: 15.0,
        ),
        Image.asset("assets/images/tree.png"),
        Container(
          padding: EdgeInsets.only(left: 50.0, right: 50.0),
          child: Row(
            children: [
              IconButton(
                icon: Image.asset("assets/icons/home.png"),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Image.asset("assets/icons/cart.png"),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Image.asset("assets/icons/Vector.png"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
