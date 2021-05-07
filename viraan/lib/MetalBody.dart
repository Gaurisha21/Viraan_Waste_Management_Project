import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';

class MetalBody extends StatelessWidget {
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
                  child: Image.asset("assets/images/metal.png"),
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

                    'assets/images/Metal Label.png',
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
                  'Accumulation of metal in the environment can lead to the slow degradation of it, releasing harmful waste. Humans can breathe in metal particles or consume metals in their food and water. Some metals, such as lead, cause adverse health effects. The fumes released by these also contribute to the acid rain.',

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

                  'The best way to avoid it is to reuse it for other purpose.\n',

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
