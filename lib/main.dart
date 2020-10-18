import 'package:flutter/material.dart';
import 'package:aider/screens/choose_login.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      /*appBar: AppBar(
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
      body: Login(),
    ),
  ));
}
