import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';

class PaperBody extends StatelessWidget {
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
                  child: Image.asset("assets/images/paper.png"),
                ),
                Positioned(
                  bottom: 0,
                  left: 20.0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 220.0,
                    child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WatchYourWaste()),
                    );
                  },
                ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(

                  'assets/images/Paper Label.png',
                  height: 200.0,
              ),
              SizedBox(
                height: 40.0,

              ),
              Text(

                'Why it is problematic?',
                style: TextStyle(
                  color: Color(0xFF4E4A4A),
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(

                'Ans',
                style: TextStyle(
                  color: Color(0xFF4E4A4A),
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(

                'How can you dodge it?',
                style: TextStyle(
                  color: Color(0xFF4E4A4A),
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(

                'Ans',
                style: TextStyle(
                  color: Color(0xFF4E4A4A),
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
