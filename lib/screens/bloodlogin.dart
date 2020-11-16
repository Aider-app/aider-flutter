import 'package:aider/networking/auth.dart';
import 'package:aider/screens/bloodcreateacc.dart';
import 'package:aider/screens/blooddash.dart';
import 'package:flutter/material.dart';

//import 'package:http/http.dart';

String bloodloggeduser = "NA";
String bloodgrp = "NA";
String bloodloginid = 'NA';
String bloodcontact = 'NA';
bool iswilling = false;

class Bloodlogin extends StatefulWidget {
  @override
  _BloodloginState createState() => _BloodloginState();
}

class _BloodloginState extends State<Bloodlogin> {
  final _bloodlogemail = TextEditingController();
  final _bloodlogpass = TextEditingController();
  bool _validateBloodemail = false;
  bool _validateBloodpass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEDF2F4),
          image: DecorationImage(
            image: AssetImage('images/bg_stripes.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(),
            Text(
              'BLOOD BANK LOG IN',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 72.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _bloodlogemail,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  hintText: "Email",
                  suffixIcon: Icon(
                    Icons.mail,
                    size: 20.0,
                    color: Color(0xFF2B2D42),
                  ),
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0x802B2D42)),
                  errorText:
                      _validateBloodemail ? 'Enter a valid email.' : null,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _bloodlogpass,
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  suffixIcon: Icon(
                    Icons.lock,
                    size: 20.0,
                    color: Color(0xFF2B2D42),
                  ),
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0x802B2D42)),
                  errorText: _validateBloodpass ? 'Enter a valid email.' : null,
                ),
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      //GO TO CREATE NEW ACC
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => BloodcreateAcc(),
                          ),
                        );
                      },
                      child: Text(
                        'New user? Create an account.',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFF2B2D42)),
                      ),
                    ),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          print('Pressed forgot password');
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Color(0xFF2B2D42)),
                        )),
                  ]),
            ),
            SizedBox(
              height: 72.0,
            ),
            //SizedBox(),
            FlatButton(
              minWidth: 50.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Color(0xFF2B2D42),
              onPressed: () async {
                print(_bloodlogemail.text);
                Map<String, dynamic> response = await bloodlog(
                  _bloodlogemail.text,
                  _bloodlogpass.text,
                );
                print(response);
                if (response["status"] == 200) {
                  bloodloggeduser = response["name"];
                  bloodloginid = response["email"];
                  bloodcontact = response["phone"];
                  bloodgrp = response["bloodgroup"];
                  iswilling = response["iswilling"];
                  print(bloodloggeduser);
                  print(bloodgrp);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Blooddash(),
                    ),
                  );
                } else if (response["status"] == 401) {
                  createdialogbox(context, "Incorrect username or password.");
                } else {
                  createdialogbox(context, "User does not exist.");
                }
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            // FlatButton(
            //   minWidth: 50.0,
            //   height: 60.0,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20.0)),
            //   color: Color(0xFF2B2D42),
            //   onPressed: () {
            //     print('pressed');
            //   },
            //   child: Text(
            //     'Blood Donation',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20,
            //       fontFamily: 'Montserrat',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

createdialogbox(BuildContext context, String text) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.redAccent[600],
            title: Text(
              "Alert",
              style: TextStyle(fontFamily: "Montserrat-Bold.ttf"),
            ),
            content: Text(
              text,
              style: TextStyle(fontFamily: "Montserrat-Bold.ttf"),
            ));
      });
}
