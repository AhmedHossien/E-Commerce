import 'dart:async';
import 'package:flutter/material.dart';
import 'signInScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => SignInScreen())));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.bottomLeft,
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Content.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
