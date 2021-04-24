import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellWasteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SellWasteHeader(size: size),
          SizedBox(
            height: 20.0,
          ),
          DropDownMenu(),
          SizedBox(
            height: 120.0,
          ),
          TagsRow(),
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

class TagsRow extends StatelessWidget {
  const TagsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Text(
            'Tags :',
            style: TextStyle(
                color: Color(0xFF4E4A4A),
                fontFamily: 'Nunito',
                fontSize: 20.0,
                fontWeight: FontWeight.normal),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 30.0,
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 0.0),
              child: Row(
                children: [
                  Text(
                    'Plastic',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15.0,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topRight,
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 30.0,
            decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 0.0),
              child: Row(
                children: [
                  Text(
                    'Paper',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15.0,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topRight,
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black,
                      size: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 110.0),
      child: Container(
        child: Row(
          children: [
            Text(
              'Select your Waste',
              style: TextStyle(
                  color: Color(0xFF4E4A4A),
                  fontFamily: 'Nunito',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal),
            ),
            DropdownButton(
              iconSize: 50.0,
              iconDisabledColor: Color(0xFF4E4A4A),
              iconEnabledColor: Color(0xFF4E4A4A),
              items: [
                DropdownMenuItem(
                  child: Text('Plastic'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Straws'),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text('Paper'),
                  value: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SellWasteHeader extends StatelessWidget {
  const SellWasteHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4,
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
            child: Image.asset("assets/images/SELL YOUR WASTE.png"),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 480.0,
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 26.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 200.0,
                child: Text(
                  'Selling your waste creates employment, feeds a hungry kid, gives kids access to education and saves the environment.You also earn coins which can be redeemed to claim rewards. Sell your waste today and leave an indelible mark on the world,',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
