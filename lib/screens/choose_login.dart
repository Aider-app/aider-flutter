import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      // appBar : AppBar(
      //   centerTitle: true,
      //   backgroundColor: Color(0xFFEDF2F4),
      //   title: Text("Aider",
      //   style: TextStyle(color: Colors.black, fontSize: 40),),
      //   elevation: 0,
      // ),
      body: Login(),
    ),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration : BoxDecoration(
        color: Color(0xFFEDF2F4),
        image : DecorationImage(image: AssetImage('images/background.jpg'),
        )
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Choose Login',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Montserrat'
            ),
          ),
          SizedBox(height: 120),
          FlatButton(
            padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
            color: Color(0xFF2B2D42),
            onPressed: () {
              print('pressed');
            },
            child: Text(
              'Log In as Donor',
              style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(height : 30),
          FlatButton(
            padding: EdgeInsets.fromLTRB(15.5, 20, 15.5, 20),
            color: Color(0xFF2B2D42),
            onPressed: () {
              print('pressed');
            },
            child: Text(
              'Log In as Recipient',
              style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Montserrat'),
            ),
          ),
          SizedBox(height : 50)
        ],
      ),
    );
  }
}
