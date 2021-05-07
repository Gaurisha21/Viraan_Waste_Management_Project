import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';

class PaperBody extends StatelessWidget {
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
                  child: Image.asset("assets/images/paper.png"),
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

                    'assets/images/Paper Label.png',
                    height: 250.0,
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
                  'Paper accounts for around 26% of total waste at landfills. Paper production causes deforestation, uses enormous amounts of energy and water, and contributes to air pollution and waste problems. As we speak, more than 199 tons of paper has already been produced (paper production in 15 seconds). Deforestation is the primary effect of our mindless use of paper.',

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

                  '1. Be a conscious consumer and buy “100% post-consumer waste recycled”. Buy recycled paper materials or materials that came from sustainable managed forests.\n\n2. In the office, reuse paper. If you’ve only used one side for example, collect them instead of throwing them away. You can bind these sheets and make a notebook using the other side.\n\n3. Reduce the use of paper cups and disposable paper plates by keeping reusable items in the office pantry.\n',

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
