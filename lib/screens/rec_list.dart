import 'package:aider/screens/chathome.dart';
import 'package:aider/screens/donordash.dart';
import 'package:flutter/material.dart';

class RecipientList extends StatefulWidget {
  @override
  _RecipientListState createState() => _RecipientListState();
}

class _RecipientListState extends State<RecipientList> {
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
                  builder: (context) => Donordash(),
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
                            "Available Recipients",
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
                          rowelement(1, context),
                          SizedBox(height: 20.0),
                          rowelement(2, context),
                          SizedBox(height: 20.0),
                          rowelement(3, context),
                          SizedBox(height: 20.0),
                          rowelement(4, context),
                          SizedBox(height: 20.0),
                          rowelement(5, context),
                          SizedBox(height: 20.0),
                          rowelement(6, context),
                          SizedBox(height: 20.0),
                          rowelement(7, context),
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

Widget rowelement(val, context) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              'Recipient #$val',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Color(0xFF2B2D42)),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Location #$val',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Color(0xFF2B2D42)),
            ),
            FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  print('Pressed view request');
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.redAccent[600],
                        title: Text(
                          "Request: ",
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
                              "In need of: ",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                            Text(
                              "Phone: ",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                            Text(
                              "Date: ",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'View request.',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0xFF2B2D42)),
                )),
          ],
        ),
        SizedBox(
          width: 50,
        ),
        Container(
          child: FlatButton(
              height: 60.0,
              color: Color(0xFF2B2D42),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                print('Pressed accept request');
                print('pressed log in');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Chathome(), //go to blood dashboard
                  ),
                );
              },
              child: Text(
                'Accept request.',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Color(0xFFFFFFFF)),
              )),
        ),
      ],
    ),
  );
}
