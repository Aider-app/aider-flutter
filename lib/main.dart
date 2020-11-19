//import 'package:aider/screens/chooseSection.dart';
import 'package:aider/splash.dart';
import 'package:flutter/material.dart';
//import 'chatrework.dart';
//import 'Login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        /* appBar: AppBar(
          backgroundColor: Color(0xFFEDF2F4),
          elevation: 0,
          title: Center(
            child: Text(
              "Aider",
              style: TextStyle(
                  color: Colors.black, fontSize: 40, fontFamily: 'Montserrat'),
            ),
          ),
        ),*/
        body: Splash(),
      ),
    ),
  ));
}
