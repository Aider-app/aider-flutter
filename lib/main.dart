import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:aider/screens/donorlogin.dart';

void main() {
  runApp(MaterialApp(
    home: Donorlogin(),
=======
import 'package:aider/screens/receiver-login.dart';

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
      body: Receiver_login(),
    ),
>>>>>>> 8e6d08adae4503c4ca499cc0faa20961823516ae
  ));
}
