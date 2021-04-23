import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/logo.png"),
        SizedBox(
          height: 10.0,
        ),
        Image.asset("assets/images/VIRAAN.png"),
        // SizedBox(
        //   height: 10.0,
        // ),
        Image.asset(
          "assets/images/tree.png",
          height: 450.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 50.0, right: 50.0),
          child: Row(
            children: [
              IconButton(
                icon: Image.asset(
                  "assets/icons/home.png",
                  color: Color(0xFF4E4A4A),
                ),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Image.asset(
                  "assets/icons/cart.png",
                  color: Color(0xFF4E4A4A),
                ),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Image.asset(
                  "assets/icons/Vector.png",
                  color: Color(0xFF4E4A4A),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
