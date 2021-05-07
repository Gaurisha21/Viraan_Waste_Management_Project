import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';

class KitchenWasteBody extends StatelessWidget {
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
                  child: Image.asset("assets/images/kitchenWaste.png"),
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

                    'assets/images/Kitchen Waste Label.png',
                    height: 220.0,
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
                  'While throwing out millions of tons of food, we also waste uncounted millions of gallons of water that was used to plant, grow, sustain, or otherwise produce it. It releases Methane. When food is thrown out, it eventually makes its way to landfills (which can themselves be a problem for the environment). As that food begins to decompose or rot, it releases methane gas. Methane, of course, is a greenhouse gas, which many scientists believe adversely affects the earth’s climate and temperature (i.e., climate change/global warming).',

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

                  '1. Shop smart: Reducing kitchen waste is best done before food even reaches the home. Avoid over-packaged food.\n\n2. Reuse grey water: Kitchens tend to produce a lot of grey water (which is defined as all the waste water from houses and offices except for that from toilets) and most of this can be reused, thus conserving water.\n\n3. Donate food: Look into what your local food pantries accept, and every once in a while go through your kitchen and take things to them. Give it to the underprivileged kids.\n',

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
