import 'package:aider/screens/blooddash.dart';
//import 'package:aider/screens/donorlogin.dart';
import 'package:flutter/material.dart';

class Bloodprevreq extends StatefulWidget {
  @override
  _BloodprevreqState createState() => _BloodprevreqState();
}

class _BloodprevreqState extends State<Bloodprevreq> {
  int val = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //appBar: AppBar(
          //   title: Image.asset('images/logo.png',),
          //  backgroundColor: Color(0xFFEDF2F4),
          //also need a go back button to previous page
          // ),
          //***********bottom notched bar********************
          bottomNavigationBar: new BottomAppBar(
            color: Color(0xff2B2D42),
            shape: CircularNotchedRectangle(),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: new FloatingActionButton(
            backgroundColor: Color(0xFF2B2D42),
            child: Icon(Icons.home_outlined),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Blooddash(),
                ),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          //**************bottom notched bar ends*******************8
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 80,
                        child: Center(
                          child: Text(
                            "Previous Requests",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          prereq(context, 1),
                          SizedBox(height: 20.0),
                          prereq(context, 2),
                          SizedBox(height: 20.0),
                          prereq(context, 3),
                          SizedBox(height: 20.0),
                          prereq(context, 4),
                          SizedBox(height: 20.0),
                          prereq(context, 5),
                          SizedBox(height: 20.0),
                          prereq(context, 6),
                          SizedBox(height: 20.0),
                          prereq(context, 7),
                          SizedBox(height: 20.0),
                          prereq(context, 8),
                          SizedBox(height: 20.0),
                          prereq(context, 9),
                          SizedBox(height: 20.0),
                          prereq(context, 10),
                          SizedBox(height: 20.0),
                          prereq(context, 11),
                          SizedBox(height: 20.0),
                          prereq(context, 12),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ))
                  ],
                ),
              ))),
    );
  }
}

//function for each row
Widget prereq(BuildContext context, val) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 50.0,
        ),
        Text(
          'Request #$val',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Color(0xFF2B2D42)),
        ),
        SizedBox(
          width: 50.0,
        ),
        FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              print('Details');
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.redAccent[600],
                    title: Text(
                      "Details: ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xFF2B2D42)),
                    ),
                    //column inside pop up (details)
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Donor name: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFF2B2D42)),
                        ),
                        Text(
                          "Phone: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFF2B2D42)),
                        ),
                        Text(
                          "Recieved blood group: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFF2B2D42)),
                        ),
                        Text(
                          "Recieved quantity: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFF2B2D42)),
                        ),
                        Text(
                          "Date: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xFF2B2D42)),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              'Details',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Color(0xFF2B2D42)),
            )),
        SizedBox(
          width: 50,
        ),
      ],
    ),
  );
}
