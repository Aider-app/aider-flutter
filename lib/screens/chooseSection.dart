import 'package:aider/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aider/screens/bloodlogin.dart';

class ChooseSection extends StatefulWidget {
  @override
  _ChooseSectionState createState() => _ChooseSectionState();
}

class _ChooseSectionState extends State<ChooseSection> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Donorlogin()),
                );
              },
              child: Text(
                'Resource bank',
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Bloodlogin()),
                );
              },
              child: Text(
                'Blood bank',
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
