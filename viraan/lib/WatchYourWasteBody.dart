import 'package:flutter/material.dart';

class WatchYourWasteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          WatchYourWasteHeader(size: size),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 40.0),
            child: Container(
              height: size.height * 0.4,
              child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: GlowingOverscrollIndicator(
                  color: Color(0xFFC59C76),
                  axisDirection: AxisDirection.down,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('1. Select a single waste item.'),
                      ),
                      ListTile(
                        title: Text(
                            '2. Click on the camera icon to take snap of your waste.'),
                      ),
                      ListTile(
                        title: Text(
                            '3 .Viraan will segregate your waste into either plastic,glass,paper,kitchen waste,metals.'),
                      ),
                      ListTile(
                        title: Text(
                            '4. Hence inform you about the correct waste management practices.'),
                      )
                    ],
                  ),
                ),
              ),
            ),
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
      ),
    );
  }
}

class WatchYourWasteHeader extends StatelessWidget {
  const WatchYourWasteHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset("assets/images/WATCH YOUR WASTE.png"),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 270.0,
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              height: 200,
              child: Image.asset("assets/images/Camera.png"),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Follow the following steps to know more about your waste',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
