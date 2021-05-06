import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viraan/Rewards.dart';
import 'home_screen.dart';
import 'package:viraan/Cart.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Image.asset("assets/images/logo.png"),
          SizedBox(
            height: 20.0,
          ),
          Image.asset("assets/images/VIRAAN.png"),
          SizedBox(
            height: 20.0,
          ),
          Image.asset(
            "assets/images/tree.png",
            height: 450.0,
          ),
          SizedBox(
            height: 20.0,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                    "assets/icons/cart.png",
                    color: Color(0xFF4E4A4A),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                ),
                Spacer(),
                IconButton(
                  icon: Image.asset(
                    "assets/icons/Vector.png",
                    color: Color(0xFF4E4A4A),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rewards()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
