
import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';
import 'Glass.dart';

class GlassBody extends StatelessWidget {
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
                  child: Image.asset("assets/images/glass.png"),
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

                    'assets/images/Glass Label.png',
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
                  'The major environmental impact of glass production is caused by atmospheric emissions from melting activities.Evaporation from the molten glass and raw materials, released from Glass waste can cause release of particles into the atmosphere.  glass is actually more detrimental than plastic because it is mined from rare materials and requires more fossil fuels to produce and ship.',

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

                  '1. The most efficient way to reduce the generation of glass waste is by preventing it from breaking. Careful and patient handling can not only prevent waste production but also increase its life cycle.\n\n2. Many glass items can be reused. Reusing the glass items for alternative uses can contribute to the efficient utilization of money.\n\n3. Always try to segregating non container glass from the ordinary glass as the former one is considered as harmful chemical and is different disposal method.\n\n',
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
