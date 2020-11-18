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
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0x608d99ae),
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                child: Image(image: AssetImage('images/logosplash.png')),
              ),
              SizedBox(
                height: 100,
              ),
              // Text(
              //   'CHOOSE SECTION',
              //   style: TextStyle(
              //     fontSize: 25,
              //     fontFamily: 'Montserrat',
              //     fontWeight: FontWeight.bold,
              //     color: Color(0xFF2B2D42),
              //   ),
              // ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.fromLTRB(15.5, 20, 15.5, 20),
                    color: Color(0xFF2B2D42),
                    onPressed: () {
                      print('pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Donorlogin()),
                      );
                    },
                    child: Text(
                      'Resource bank',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    padding: EdgeInsets.fromLTRB(28, 20, 28, 20),
                    color: Color(0xFF2B2D42),
                    onPressed: () {
                      print('pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bloodlogin()),
                      );
                    },
                    child: Text(
                      'Blood bank',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Color(0xff2b2d42),
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 300,
                child: Center(
                  child: Text(
                    'Choose Resource bank if you want to donate or request goods.\n\nChoose Blood bank if you want to request or donate blood.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B2D42),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
