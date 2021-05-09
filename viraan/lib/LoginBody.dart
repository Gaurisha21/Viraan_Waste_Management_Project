import 'package:flutter/material.dart';
import 'package:viraan/Backend/SignUp.dart';
import 'SignUp.dart';
import 'body.dart';
import 'SignUp.dart';
import 'home_screen.dart';
import 'package:viraan/Backend/SignIn.dart';

class LoginBody extends StatelessWidget {
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
        onPressed: () async {
          bool auth=await SignInBLoC().signIn();
          if(auth) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }
        },
        child: Text(
          "Login",
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

    final loginWithGoogle = Material(
      elevation: 0,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Color(0xFF3CB371),
      child: MaterialButton(
        color: Color(0xFF3CB371),
        minWidth: 380.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text(
          "Login With Google",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
              fontSize: 18.0),
        ),
      ),
    );
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          buildHeaderContainer(size),
          buildEmailContainer(),
          SizedBox(
            height: 30.0,
          ),
          buildPasswordContainer(),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: loginButon,
          ),
          SizedBox(
            height: 15.0,
          ),
          // WithGoogle,login

          TextButton(
            child: Text(
              'Don\'t have an account? Sign Up',
              style: TextStyle(
                color: Color(0xFF8A8787),
                fontFamily: 'Nunito',
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              SignUpBLoC().init();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
          ),
        ],
      ),
    );
  }

  Container buildPasswordContainer() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        obscureText: true,
        cursorColor: Color(0xFF8A8787),
        controller: SignInBLoC().passwordTextController,
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
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFF8A8787),
          ),
          hintText: "Enter your password",
          hintStyle: TextStyle(
            color: Color(0xFF8A8787),
            fontFamily: 'Nunito',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }

  Container buildEmailContainer() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        cursorColor: Color(0xFF8A8787),
        controller: SignInBLoC().emailTextController,
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
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Color(0xFF8A8787),
          ),
          hintText: "Enter your email",
          hintStyle: TextStyle(
            color: Color(0xFF8A8787),
            fontFamily: 'Nunito',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }

  Container buildHeaderContainer(Size size) {
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
            child: Image.asset("assets/images/LOGIN.png"),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 20.0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.centerLeft,
          //     height: 270.0,
          //     child: Icon(Icons.arrow_back_ios_outlined),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 100.0,
              child: Text(
                'Please sign in to continue',
                style: TextStyle(
                    color: Color(0xFF8A8787),
                    fontFamily: 'Nunito',
                    fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
