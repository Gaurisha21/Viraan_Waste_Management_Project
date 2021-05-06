import 'package:flutter/material.dart';
import 'package:viraan/WatchYourWaste.dart';
import 'package:viraan/SellWaste.dart';
import 'package:viraan/Rewards.dart';
import 'package:viraan/Cart.dart';
import 'package:viraan/Mission.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        padding: EdgeInsets.only(top: 20.0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFEED8C1),
              image: DecorationImage(
                alignment: Alignment.center,
                // fit: BoxFit.contain,
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.input),
          //   title: Text('Login'),
          //   onTap: () => {},
          // ),
          // ListTile(
          //   leading: Icon(Icons.assignment_ind),
          //   title: Text('Sign Up'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Scan Waste'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WatchYourWaste()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.auto_delete_sharp),
            title: Text('Sell Waste'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SellWaste()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.auto_awesome),
            title: Text('Rewards'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rewards()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Mission'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mission()),
              )
            },
          ),
        ],
      ),
    );
  }
}
