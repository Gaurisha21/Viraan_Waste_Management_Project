import 'package:flutter/material.dart';
import 'package:viraan/Backend/SignUp.dart';
import 'home_screen.dart';
import 'package:viraan/Login.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final signupWithGoogle = Material(
      elevation: 0,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Color(0xFF3CB371),
      child: MaterialButton(
        color: Color(0xFF3CB371),
        minWidth: 380.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {
          bool auth= await SignUpBLoC().signUp();
          if(auth) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }
        },
        child: Text(
          "Sign Up",
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

    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeaderContainer(size, context),
            buildNameContainer(),
            SizedBox(
              height: 25.0,
            ),
            buildEmailContainer(),
            SizedBox(
              height: 25.0,
            ),
            buildPasswordContainer(),
            SizedBox(
              height: 25.0,
            ),
            ConfirmPasswordContainer(),
            SizedBox(
              height: 25.0,
            ),
            AddressContainer(),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: signupWithGoogle,
            ),
          ],
        ),
      ),
    );
  }

  Container buildPasswordContainer() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        obscureText: true,
        cursorColor: Color(0xFF8A8787),
        controller: SignUpBLoC().passwordTextController,
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
        keyboardType: TextInputType.emailAddress,
        cursorColor: Color(0xFF8A8787),
        controller: SignUpBLoC().emailTextController,
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

  Container buildHeaderContainer(Size size, BuildContext context) {
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
            child: Image.asset("assets/images/signup.png"),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 270.0,
              child:  IconButton(
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login()),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20.0,
            right: 0,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 100.0,
              child: Text(
                'Please sign up to continue',
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

class AddressContainer extends StatelessWidget {
  const AddressContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        cursorColor: Color(0xFF8A8787),
        controller: SignUpBLoC().addressTextController,
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
            Icons.home_work,
            color: Color(0xFF8A8787),
          ),
          hintText: "Enter your address",
          hintStyle: TextStyle(
            color: Color(0xFF8A8787),
            fontFamily: 'Nunito',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}

class ConfirmPasswordContainer extends StatelessWidget {
  const ConfirmPasswordContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        obscureText: true,
        cursorColor: Color(0xFF8A8787),
        controller: SignUpBLoC().confirmPasswordTextController,
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
          hintText: "Confirm your password",
          hintStyle: TextStyle(
            color: Color(0xFF8A8787),
            fontFamily: 'Nunito',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}

class buildNameContainer extends StatelessWidget {
  const buildNameContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        cursorColor: Color(0xFF8A8787),
        controller: SignUpBLoC().nameTextController,
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
            Icons.person,
            color: Color(0xFF8A8787),
          ),
          hintText: "Enter your name",
          hintStyle: TextStyle(
            color: Color(0xFF8A8787),
            fontFamily: 'Nunito',
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
