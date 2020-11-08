import 'package:aider/networking/auth.dart';
import 'package:aider/screens/BloodregSuccess.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class BloodcreateAcc extends StatefulWidget {
  @override
  _BloodcreateAccState createState() => _BloodcreateAccState();
}

class _BloodcreateAccState extends State<BloodcreateAcc> {
  //Text editing controllers and validators for verification
  final _passcon = TextEditingController();
  final _mailcon = TextEditingController();
  final _confirmpasscon = TextEditingController();
  final _phonecon = TextEditingController();
  final _addresscon = TextEditingController();
  final _namecon = TextEditingController();
  final _bloodcon = TextEditingController();
  //bool _validateBlood = false;
  bool _validatePass = false;
  bool _validateEmail = false;
  bool _validateConPass = false;
  bool _validatePhone = false;
  bool _validateAddress = false;
  bool _validateName = false;
  int _value = 1;
  bool validated = false;

  List<String> bldgrp = ['A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'];
  Position position;
  Future<Position> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
    //print("inside function $position"); //longitude and latitude
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
          // appBar: AppBar(
          //  title: Image.asset(
          //   'images/logo.png',
          // ),
          //  backgroundColor: Color(0xFFEDF2F4),
          //also need a go back button to previous page
          // ),
          resizeToAvoidBottomInset: true,
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      ' REGISTER',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: Color(0xFF2B2D42)),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.0,
                          ),

                          //****************************************************Name****************************************
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
                              //text controller
                              controller: _namecon,
                              cursorColor: Color(0xFF2B2D42),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color(0x802B2D42)),
                                //error checking message
                                errorText:
                                    _validateName ? 'Enter a name.' : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //************************************blood*********************************************** */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 0,
                              ),
                              Text(
                                "Blood group :",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                padding: EdgeInsets.all(8),
                                child: DropdownButton(

                                    //  focusColor: Color(0x802B2D42),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text(
                                          "A+",
                                          style: TextStyle(
                                            color: Color(0x802B2D42),
                                            fontSize: 15.0,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "A-",
                                          style: TextStyle(
                                            color: Color(0x802B2D42),
                                            fontSize: 15.0,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                          child: Text(
                                            "B+",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 3),
                                      DropdownMenuItem(
                                          child: Text(
                                            "B-",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 4),
                                      DropdownMenuItem(
                                          child: Text(
                                            "AB+",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 5),
                                      DropdownMenuItem(
                                          child: Text(
                                            "AB-",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 6),
                                      DropdownMenuItem(
                                          child: Text(
                                            "O+",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 7),
                                      DropdownMenuItem(
                                          child: Text(
                                            "O-",
                                            style: TextStyle(
                                              color: Color(0x802B2D42),
                                              fontSize: 15.0,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          value: 8),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                      _bloodcon.text = bldgrp[value - 1];
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //***************************************Phone*************************************************
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
                                //text controller
                                controller: _phonecon,
                                cursorColor: Color(0xFF2B2D42),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Mobile",
                                  hintStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Color(0x802B2D42)),
                                  //error checking message
                                  errorText: _validatePhone
                                      ? 'Enter a valid mobile number.'
                                      : null,
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //*****************************************Email**************************************************
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
                              //controller
                              controller: _mailcon,
                              cursorColor: Color(0xFF2B2D42),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color(0x802B2D42)),
                                //error message
                                errorText: _validateEmail
                                    ? 'Enter a valid Email.'
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //*******************************************Address***********************************************
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                            padding: EdgeInsets.all(10),
                            // to scroll down
                            child: new SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              reverse: true,
                              child: TextField(
                                //controller
                                controller: _addresscon,
                                //for multiple lines
                                maxLines: null,
                                cursorColor: Color(0xFF2B2D42),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Address",
                                  hintStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      color: Color(0x802B2D42)),
                                  //error message
                                  errorText: _validateAddress
                                      ? 'Enter a valid address.'
                                      : null,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //*******************************************password*******************************************************************
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
                              //controller
                              controller: _passcon,
                              obscureText: true,
                              cursorColor: Color(0xFF2B2D42),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Create password",
                                hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color(0x802B2D42)),
                                //error message
                                errorText: _validatePass
                                    ? 'Password should be atleast 8 characters long.'
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //************************************confirm password***********************************************************
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
                              //controller
                              controller: _confirmpasscon,
                              obscureText: true,
                              cursorColor: Color(0xFF2B2D42),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Confirm password",
                                hintStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                    color: Color(0x802B2D42)),
                                //error message
                                errorText: _validateConPass
                                    ? 'Passwords do not match.'
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //*******************************************Create acc button*************************************************
                          ButtonTheme(
                            minWidth: 50.0,
                            height: 60.0,
                            child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                color: Color(0xFF2B2D42),
                                onPressed: () async {
                                  position = await _getCurrentLocation();
                                  setState(() {
                                    //validating for password
                                    if (_passcon.text.isEmpty ||
                                        _passcon.text.length < 8) {
                                      _validatePass = true;
                                    } else {
                                      _validatePass = false;
                                    }
                                    //validating for email
                                    if (_mailcon.text.isEmpty ||
                                        !_mailcon.text.contains('@')) {
                                      _validateEmail = true;
                                    } else {
                                      _validateEmail = false;
                                    }
                                    //validating for confirm password
                                    if ((_confirmpasscon.text !=
                                            _passcon.text) ||
                                        _confirmpasscon.text.length < 8) {
                                      _validateConPass = true;
                                    } else {
                                      _validateConPass = false;
                                    }
                                    //validating for phone number
                                    if (_phonecon.text.length < 10 ||
                                        _phonecon.text.isEmpty) {
                                      _validatePhone = true;
                                    } else {
                                      _validatePhone = false;
                                    }
                                    //validating for address
                                    if (_addresscon.text.isEmpty) {
                                      _validateAddress = true;
                                    } else {
                                      _validateAddress = false;
                                    }
                                    if (_namecon.text.isEmpty) {
                                      _validateName = true;
                                    } else {
                                      _validateName = false;
                                    }
                                    // only goes to success page if all validators are false.
                                    if (_validateAddress == false &&
                                        _validateName == false &&
                                        _validatePhone == false &&
                                        _validateConPass == false &&
                                        _validatePass == false &&
                                        _validateEmail == false) {
                                      validated = true;
                                      // bloodreg(
                                      //     _mailcon.text,
                                      //     _phonecon.text,
                                      //     _addresscon.text,
                                      //     _bloodcon.text,
                                      //     position.latitude,
                                      //     position.longitude,
                                      //     _passcon.text,
                                      //     _namecon.text);
                                      print(_namecon.text.characters);

                                      return null;
                                    }
                                  });
                                  if (validated) {
                                    print("Validated");
                                    Map<String, dynamic> resp = await bloodreg(
                                        _mailcon.text,
                                        _phonecon.text,
                                        _addresscon.text,
                                        _bloodcon.text,
                                        position.latitude,
                                        position.longitude,
                                        _passcon.text,
                                        _namecon.text);
                                    print(resp);
                                    if (resp["status"] == 200) {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Bloodregsuccess(),
                                        ),
                                      );
                                    } else if (resp["status"] == 401) {
                                      createdialogbox(
                                          context, "User already exists");
                                    }
                                  }
                                },
                                child: Text(
                                  'Create Account',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Colors.white),
                                )),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
            ));
      });
}
