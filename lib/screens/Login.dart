import 'package:aider/screens/Donorcreateacc.dart';
import 'package:aider/screens/recieverdash.dart';
import 'package:aider/screens/donordash.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:aider/networking/auth.dart';

String loggeduser = "NA";
String loginid;
String id = "NA";
String rating = "0";
String contact = "NA";
//import 'package:aider/screens/donorregsuccess.dart';
Position position;
void main() => runApp(Donorlogin());
Future<Position> _getCurrentLocation() async {
  final positioncoord = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  position = positioncoord;
  //print("inside function $position"); //longitude and latitude
}

class Donorlogin extends StatefulWidget {
  @override
  _DonorloginState createState() => _DonorloginState();
}

class _DonorloginState extends State<Donorlogin> {
  final _passcon = TextEditingController();
  final _mailcon = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          /* appBar: AppBar(
            backgroundColor: Color(0xFFEDF2F4),
            elevation: 0,
            title: Text(
              "Aider",
              style: TextStyle(
                  color: Colors.black, fontSize: 30, fontFamily: 'Montserrat'),
            ),
          ),*/
          /*appBar: AppBar(
            title: Image.asset(
              'images/logo.png',
            ),
            backgroundColor: Color(0xFFEDF2F4),
          ),*/
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Color(0xFF2B2D42)),
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
                    controller: _mailcon,
                    cursorColor: Color(0xFF2B2D42),
                    decoration: InputDecoration(
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
                      controller: _passcon,
                      obscureText: true,
                      cursorColor: Color(0xFF2B2D42),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock,
                          size: 20.0,
                          color: Color(0xFF2B2D42),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(0x802B2D42)),
                      )),
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DonorCreateAcc(),
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
                            )),
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
                  height: 60.0,
                ),
                ButtonTheme(
                  minWidth: 50.0,
                  height: 60.0,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Color(0xFF2B2D42),
                      onPressed: () async {
                        print(_mailcon.text);
                        Map<String, dynamic> response = await login(
                          _mailcon.text,
                          _passcon.text,
                        );
                        print(response);
                        if (response["status"] == 200) {
                          if (response["role"] == "donor") {
                            loggeduser = response["name"];
                            loginid = response["email"];
                            rating = response["rating"];
                            contact = response["phone"];
                            print(loggeduser);
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => Donordash(),
                              ),
                            );
                          } else {
                            loggeduser = response["name"];
                            loginid = response["email"];
                            print(loggeduser);
                            id = response["org_id"];
                            contact = response["phone"];
                            print(contact);
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => Recieverdash(),
                              ),
                            );
                          }
                        } else {
                          createdialogbox(context, response["message"]);
                        }
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 60.0,
                ),
                // ButtonTheme(
                //   minWidth: 50.0,
                //   height: 60.0,
                //   child: FlatButton(
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20.0)),
                //       color: Color(0xFF2B2D42),
                //       onPressed: () {
                //         print('Pressed recipient login');
                //         Navigator.of(context).push(
                //           MaterialPageRoute(
                //             builder: (context) => Receiverlogin(),
                //           ),
                //         );
                //       },
                //       child: Text(
                //         'Request Donations',
                //         style: TextStyle(
                //           fontFamily: 'Montserrat',
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20.0,
                //           color: Colors.white,
                //         ),
                //       )),
                // ),
              ],
            ),
          ),
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
        ),
      );
    },
  );
}
