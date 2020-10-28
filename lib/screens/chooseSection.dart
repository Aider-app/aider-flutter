import 'package:aider/screens/donorlogin.dart';
import 'package:flutter/material.dart';

class chooseSection extends StatefulWidget {
  @override
  _chooseSectionState createState() => _chooseSectionState();
}

class _chooseSectionState extends State<chooseSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xFFEDF2F4),
            image: DecorationImage(
              image: AssetImage('images/bg_stripes.png'),
            )),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CHOOSE SECTION',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 120),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
              color: Color(0xFF2B2D42),
              onPressed: () {
                print('pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Donorlogin()),
                );
              },
              child: Text(
                'Resource donation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              padding: EdgeInsets.fromLTRB(15.5, 20, 15.5, 20),
              color: Color(0xFF2B2D42),
              onPressed: () {
                print('pressed');
              },
              child: Text(
                'Blood donation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
