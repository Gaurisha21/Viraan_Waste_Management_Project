



import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';
import 'Glass.dart';

class PlasticBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: size.height * 0.4,
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
                  child: Image.asset("assets/images/plastic.png"),
                ),
                Positioned(
                  bottom: 0,
                  left: 20.0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 200.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SellWaste()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(

                    'assets/images/Plastic Label.png',
                    height: 200.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,

                ),
                Text(

                  'Why it is problematic?',
                  style: TextStyle(
                    color: Color(0xFF4E4A4A),
                    fontFamily: 'Nunito',
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Improper disposal of plastics poses a number of problems. Littering of plastics in open spaces creates unhygienic conditions acting as breeding ground for insects and mosquitoes  causing malaria and dengue. Plastics do not undergo degradation, thus, stay in the soil for many years.',

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
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(

                  '1. Sort your plastic waste as efficiently as possible.\n\n2. Avoid pre-packed fast food or dispose of the packaging in the waste bin\n\n3. Carry Reusable Shopping BagsAvoid Bottled Water and use reusable cups and plates\n\n',

                  style: TextStyle(
                    color: Color(0xFF4E4A4A),
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
    );
  }
}
