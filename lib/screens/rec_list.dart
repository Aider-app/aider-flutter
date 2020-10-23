import 'package:aider/screens/donordash.dart';
import 'package:flutter/material.dart';

class Recipient_List extends StatefulWidget {
  @override
  _Recipient_ListState createState() => _Recipient_ListState();
}

class _Recipient_ListState extends State<Recipient_List> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom notched bar
      bottomNavigationBar: new BottomAppBar(
        color: Color(0xFF2B2D42),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //bottom notched bar ends
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xFFEDF2F4),
            image: DecorationImage(image: AssetImage('images/background.jpg'))),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Available Recipients",
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 80.0),
            Row(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      child: Text('Recipient #1'),
                    ),
                    Container(
                      child: Text(
                        'Location',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Color(0xFF2B2D42)),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            print('Pressed view request');
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                color: Color(0xFF2B2D42)),
                          )),
                    )
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
