import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:viraan/home_screen.dart';
import 'home_screen.dart';
import 'package:viraan/Cart.dart';
import 'package:viraan/Rewards.dart';
import 'package:viraan/models/CartModel.dart';
import 'package:viraan/SellWaste.dart';

class Waste {
  String waste_name;
  String waste_type;
  Waste(this.waste_name, this.waste_type);
}

class SellWasteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 0,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Color(0xFF3CB371),
      child: MaterialButton(
        color: Color(0xFF3CB371),
        minWidth: 380.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cart()),
          );
        },
        child: Text(
          "Go to Cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Nunito',
            fontSize: 18.0,
          ),
        ),
      ),
    );
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SellWasteHeader(size: size),
          SizedBox(
            height: 30.0,
          ),
          DropDownMenu(), // TODO: add drop down menu (5)
          //TODO: text field
          // TODO: Remove -
          //TODO: next wala person

          SizedBox(
            height: 50.0,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: loginButon,
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

// class DropDownMenu extends StatefulWidget {
//   const DropDownMenu({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   _DropDownMenuState createState() => _DropDownMenuState();
// }

// class _DropDownMenuState extends State<DropDownMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 110.0),
//       child: Container(
//         child: Row(
//           children: [
//             Text(
//               'Select your Waste',
//               style: TextStyle(
//                   color: Color(0xFF4E4A4A),
//                   fontFamily: 'Nunito',
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.normal),
//             ),
//             DropdownButton(
//               iconSize: 50.0,
//               iconDisabledColor: Color(0xFF4E4A4A),
//               iconEnabledColor: Color(0xFF4E4A4A),
//               items: [
//                 DropdownMenuItem(
//                   child: Text('Plastic'),
//                   value: 1,
//                 ),
//                 DropdownMenuItem(
//                   child: Text('Glass'),
//                   value: 2,
//                 ),
//                 DropdownMenuItem(
//                   child: Text('Paper'),
//                   value: 3,
//                 ),
//                 DropdownMenuItem(
//                   child: Text('Kitchen Waste'),
//                   value: 4,
//                 ),
//                 DropdownMenuItem(
//                   child: Text('Metal'),
//                   value: 5,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DropDownMenu extends StatefulWidget {
  @override
  _DropDownMenuState createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: DropdownButton<String>(
        value: _chosenValue,
        //elevation: 5,
        style: TextStyle(
          color: Color(0xFF4E4A4A),
          fontFamily: 'Nunito',
        ),

        items: <String>[
          'Plastic',
          'Paper',
          'Glass',
          'Kitchen Waste',
          'Metal',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: <Widget>[
                Text(value),
              ],
            ),
          );
        }).toList(),
        hint: Text(
          'Select your Waste',
          style: TextStyle(
              color: Color(0xFF4E4A4A),
              fontFamily: 'Nunito',
              fontSize: 20.0,
              fontWeight: FontWeight.normal),
        ),
        onChanged: (String value) {
          // setState(() {
          _chosenValue = value;
          return showDialog(
              context: context,
              builder: (BuildContext context) {
                return alertDialog(wasteType: value);
                // });
              });
        },
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
          // Positioned(
          //   bottom: 0,
          //   left: 20.0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.centerLeft,
          //     height: 480.0,
          //     child: Icon(Icons.arrow_back_ios_outlined),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 26.0),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 270.0,
                child: Text(
                  'Selling your waste creates employment, feeds a hungry kid, gives kids access to education and saves the environment. You also earn coins which can be redeemed to claim rewards. Sell your waste today and leave an indelible mark on the world.',
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

class alertDialog extends StatelessWidget {
  var wasteType;
  alertDialog({
    Key key,
    @required this.wasteType,
  }) : super(key: key);

  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Tell us what it is called?"),
      content: TextField(
        cursorColor: Color(0xFF8A8787),
        decoration: new InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8A8787),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF8A8787),
            ),
          ),
        ),
        controller: controller,
      ),
      actions: [
        FlatButton(
          child: Text('Add to Cart'),
          color: Color(0xFF3CB371),
          textColor: Colors.white,
          onPressed: () {
            String wasteName = controller.text;
            var waste = Waste(wasteName, wasteType);

            CartModel().addToCart(waste);

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SellWaste()),
            );
          },
        ),
      ],
    );
  }
}
