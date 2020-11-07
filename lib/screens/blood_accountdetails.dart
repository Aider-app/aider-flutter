import 'package:aider/screens/bloodlogin.dart';
import 'package:flutter/material.dart';

class BloodDetails extends StatefulWidget {
  @override
  _BloodDetailsState createState() => _BloodDetailsState();
}

class _BloodDetailsState extends State<BloodDetails> {
  final _description = TextEditingController();
  bool _validatedescription = false;
  final _quantity = TextEditingController();
  bool _validatequantity = false;
  int _value = 1;
  bool isswitched = false;
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
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //bottom notched bar ends
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEDF2F4),
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "MY ACCOUNT",
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                color: Color(0xFF2B2D42),
              ),
            ),
            SizedBox(height: 80.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38.0),
                Text(
                  "Name : $bloodloggeduser",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38),
                Text(
                  "Phone : $bloodcontact",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38),
                Text(
                  "Blood Group : $bloodgrp",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38),
                Text(
                  "Email :\n $bloodloginid",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2B2D42),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "I want to donate",
                    style: TextStyle(
                      color: Color(0xFF2B2D42),
                      fontSize: 18,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Switch(
                    activeColor: Color(0xFF2B2D42),
                    activeTrackColor: Color(0x7A2B2D42),
                    value: isswitched,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        isswitched = value;
                      });
                    },
                  )
                ],
              ),
            )
            // SizedBox(height: 30.0),
            // SizedBox(height: 60.0),
            /* Container(
              width: 100.0,
              height: 50.0,
              child: OutlineButton(
                  // borderSide: BorderSide.none,
               Row(
                      children: [
                        Text(
                          "I want to donate",
                          style:
                              TextStyle(color: Color(0xFF2B2D42), fontSize: 18),
                        )
                      ],
                    )   shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Blood_AccountDetails(),
                      ),
                    );
                  },
                  child: Center(
                      child: Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B2D42),
                    ),
                  ))),
            ),*/
          ],
        ),
      ),
    );
  }
}
