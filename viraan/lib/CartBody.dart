import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          CartHeader(size: size),
          CartItems(size: size),
          SizedBox(
            height: 10.0,
          ),
          FooterCart(),
        ],
      ),
    );
  }
}

class FooterCart extends StatelessWidget {
  const FooterCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: size.height * 0.5,
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Color(0xFFD1A985),
            child: ListView(
              children: [
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plastic Bottle',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Plastic',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notebook',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Paper',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron rod',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron stand',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron rod',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron rod',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron rod',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xFFE8CAAB),
                  elevation: 4.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.auto_awesome,
                      color: Color(0xFF4E4A4A),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Iron rod',
                          style: TextStyle(fontFamily: 'Nunito'),
                        ),
                        Text(
                          'Metal',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Color(0xFFD1A985),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartHeader extends StatelessWidget {
  const CartHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
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
            child: Image.asset("assets/images/CartHeader.png"),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios_outlined),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Your Cart :',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
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
