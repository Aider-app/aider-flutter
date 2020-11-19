import 'package:aider/screens/Recievercreateacc.dart';
import 'package:aider/screens/donorregsuccess.dart';
import 'package:flutter/material.dart';
import 'package:aider/networking/auth.dart';

class DonorCreateAcc extends StatefulWidget {
  @override
  _DonorCreateAccState createState() => _DonorCreateAccState();
}

class _DonorCreateAccState extends State<DonorCreateAcc> {
  //Text editing controllers and validators for verification
  final _passcon = TextEditingController();
  final _mailcon = TextEditingController();
  final _confirmpasscon = TextEditingController();
  final _phonecon = TextEditingController();
  //final _addresscon = TextEditingController();
  final _namecon = TextEditingController();
  bool _validatePass = false;
  bool _validateEmail = false;
  bool _validateConPass = false;
  bool _validatePhone = false;
  //bool _validateAddress = false;
  bool _validateName = false;

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
          //   title: Image.asset('images/logo.png',),
          //   backgroundColor: Color(0xFFEDF2F4),
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        ' NEW DONOR',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Color(0xFF2B2D42)),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    //****************************************************Name****************************************
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(20),
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
                          labelText: "Name",
                          labelStyle: TextStyle(
                            color: Color(0xFF2B2D42),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
                          //error checking message
                          errorText: _validateName ? 'Enter a name.' : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //***************************************Phone*************************************************
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      padding: EdgeInsets.all(10),
                      child: TextField(
                          //text controller
                          controller: _phonecon,
                          keyboardType: TextInputType.number,
                          cursorColor: Color(0xFF2B2D42),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Mobile",
                            labelStyle: TextStyle(
                              color: Color(0xFF2B2D42),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
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
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
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
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Color(0xFF2B2D42),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
                          //error message
                          errorText:
                              _validateEmail ? 'Enter a valid Email.' : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // //*******************************************Address***********************************************
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                    //   margin: EdgeInsets.symmetric(
                    //     horizontal: 40,
                    //   ),
                    //   padding: EdgeInsets.all(10),
                    //   // to scroll down
                    //   child: new SingleChildScrollView(
                    //     scrollDirection: Axis.vertical,
                    //     reverse: true,
                    //     child: TextField(
                    //       //controller
                    //       controller: _addresscon,
                    //       //for multiple lines
                    //       maxLines: null,
                    //       cursorColor: Color(0xFF2B2D42),
                    //       decoration: InputDecoration(
                    //         border: InputBorder.none,
                    //         hintText: "Address",
                    //         hintStyle: TextStyle(
                    //             fontFamily: 'Montserrat',
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 15.0,
                    //             color: Color(0x802B2D42)),
                    //         //error message
                    //         errorText: _validateAddress
                    //             ? 'Enter a valid address.'
                    //             : null,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20.0,
                    // ),
                    //*******************************************password*******************************************************************
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(20),
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
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Color(0xFF2B2D42),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
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
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                        color: Colors.white,
                        //  borderRadius: BorderRadius.circular(20),
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
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            color: Color(0xFF2B2D42),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                          ),
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
                            bool validated = false;
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
                              if ((_confirmpasscon.text != _passcon.text) ||
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
                              // if (_addresscon.text.isEmpty) {
                              //   _validateAddress = true;
                              // } else {
                              //   _validateAddress = false;
                              // }
                              if (_namecon.text.isEmpty) {
                                _validateName = true;
                              } else {
                                _validateName = false;
                              }
                              // only goes to success page if all validators are false.
                              if (_validateName == false &&
                                  _validatePhone == false &&
                                  _validateConPass == false &&
                                  _validatePass == false &&
                                  _validateEmail == false) {
                                print(_namecon.text.characters);
                                validated = true;
                              }

                              /* */

                              return null;
                            });
                            if (validated) {
                              Map<String, dynamic> resp = await donorreg(
                                  _mailcon.text,
                                  _phonecon.text,
                                  _namecon.text,
                                  _passcon.text);
                              print(resp);
                              if (resp["status"] == 200) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DregSuccess(),
                                  ),
                                );
                              } else if (resp["status"] == 401) {
                                createdialogbox(context, "User already exists");
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
                      height: 40.0,
                    ),
                    ButtonTheme(
                      minWidth: 50.0,
                      height: 60.0,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Color(0xFF2B2D42),
                          onPressed: () {
                            print('Pressed recipient login');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecieverCreateAcc(),
                              ),
                            );
                          },
                          child: Text(
                            'Create Recipient Account',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
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
