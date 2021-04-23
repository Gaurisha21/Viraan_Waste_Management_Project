import 'package:flutter/material.dart';

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
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Login'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text('Sign Up'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Scan Waste'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.auto_delete_sharp),
            title: Text('Sell Waste'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.auto_awesome),
            title: Text('Rewards'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
