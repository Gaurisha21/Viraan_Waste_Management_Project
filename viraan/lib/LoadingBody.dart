import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:viraan/WatchYourWaste.dart';

class LoadingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                alignment: Alignment.centerLeft,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF000000),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WatchYourWaste()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220.0),
            child: SpinKitCircle(
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              'Oops!'
                  ' Your waste can\'t be processed',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
          )
        ],
      ),
    );
  }
}
