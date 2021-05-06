import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:viraan/Cart.dart';
import 'Rewards.dart';

class RewardsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.5,
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
                  child: Image.asset("assets/images/rewards.png"),
                ),
                Positioned(
                  bottom: 0,
                  left: 20.0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 120.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon(Icons.arrow_back_ios_outlined),
                        SizedBox(
                          height: 40.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'Your Rewards :',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),

                              IconButton(
                                icon: Image.asset('assets/images/money 1.png'),
                              ),
                              Text(
                                '200',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
          Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/Rectangle 26.png'),
                  Positioned(
                    left: 20.0,
                      child: Image.asset('assets/images/Rewards Text 1.png'))
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Stack(
                children: [
                  Image.asset('assets/images/Rectangle 27.png'),
                  Positioned(
                      left: 20.0,
                      child: Image.asset('assets/images/Rewards Text 2.png'))
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Stack(
                children: [
                  Image.asset('assets/images/Rectangle 28.png'),
                  Positioned(
                      left: 20.0,
                      child: Image.asset('assets/images/Rewards Text 3.png'))
                ],
              ),
              SizedBox(
                height: 40.0,
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
        ],
      ),
    );
  }
}
