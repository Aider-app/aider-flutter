import 'package:flutter/material.dart';
import 'package:aider/screens/sample.dart';
import 'package:aider/screens/receiver-login.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEDF2F4),
        elevation: 0,
        title: Center(
          child: Text(
            "Aider",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
        ),
      ),
      body: Receiver_login(),
    ),
  ));
}
