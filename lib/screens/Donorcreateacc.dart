import 'package:aider/screens/donorregsuccess.dart';
import 'package:flutter/material.dart';

void main() => runApp(DonorCreateAcc());

class DonorCreateAcc extends StatefulWidget {
  @override
  _DonorCreateAccState createState() => _DonorCreateAccState();
}

class _DonorCreateAccState extends State<DonorCreateAcc> {
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
                        'DONOR',
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
                    //Name
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
                        cursorColor: Color(0xFF2B2D42),
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color(0x802B2D42)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Phone
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
                          cursorColor: Color(0xFF2B2D42),
                          decoration: InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Color(0x802B2D42)),
                          )),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Email
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
                        cursorColor: Color(0xFF2B2D42),
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color(0x802B2D42)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Address
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
                        cursorColor: Color(0xFF2B2D42),
                        decoration: InputDecoration(
                          hintText: "Address",
                          hintStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color(0x802B2D42)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Create acc button
                    ButtonTheme(
                      minWidth: 50.0,
                      height: 60.0,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Color(0xFF2B2D42),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DregSuccess()));
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
          ),
        ),
      ),
    );
  }
}
