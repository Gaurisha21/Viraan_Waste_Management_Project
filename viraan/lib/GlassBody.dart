import 'package:flutter/material.dart';

class GlassBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.6,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.5,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 50.0,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/Login header BG.png"),
                  ),
                ),
                child: Image.asset("assets/images/glass.png"),
              ),
              Positioned(
                bottom: 0,
                left: 20.0,
                right: 0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 400.0,
                  child: Icon(Icons.arrow_back_ios_outlined),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
