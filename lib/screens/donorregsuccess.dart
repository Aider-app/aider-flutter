import 'package:flutter/material.dart';
import 'package:aider/screens/Login.dart';

void main() => runApp(DregSuccess());

class DregSuccess extends StatefulWidget {
  @override
  _DregSuccessState createState() => _DregSuccessState();
}

class _DregSuccessState extends State<DregSuccess> {
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
                    Container(
                      child: Image.asset("images/check.png"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      child: Text(
                        "Congratulations!\n",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 33.0,
                            color: Color(0xFF2B2D42)),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "You are now a donor.\nPlease log in to continue.\n",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Color(0xFF2B2D42)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 40.0,
                    ),

                    //Create acc button
                    ButtonTheme(
                      minWidth: 50.0,
                      height: 60.0,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Color(0xFF2B2D42),
                          //Go to login page
                          onPressed: () {
                            print('Pressed Log In...Return to login page.');
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Donorlogin()));
                          },
                          child: Text(
                            'Go to Log In',
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
          ),
        ),
      ),
    );
  }
}
