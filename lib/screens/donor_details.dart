import 'package:flutter/material.dart';
import 'package:aider/screens/donordash.dart';


class DonorDetails extends StatefulWidget {
  @override
  _DonorDetailsState createState() => _DonorDetailsState();
}

class _DonorDetailsState extends State<DonorDetails> {
        body: Container(
            decoration: BoxDecoration(
                color: Color(0xFFEDF2F4),
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "My Account",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 80.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      "Name : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width:
                            250.0), //sized box might have to remove while actual name is displayed
                    SizedBox(width: 16.7)
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 38.0),
                    Text(
                      "Rating : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        width:
                            279.0), //sized box might have to remove while actual name is displayed
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 18),
                    Text(
                      "Phone : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        width:
                            245.0), //sized box might have to remove while actual name is displayed
                    SizedBox(width: 16.7)
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 38),
                    Text(
                      "Email : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 202.0),
                    SizedBox(width: 16.7)
                  ],
                ),
                SizedBox(height: 30.0),
                SizedBox(height: 60.0),
                Container(
                  width: 100.0,
                  height: 50.0,
                  child: OutlineButton(
                            // borderSide: BorderSide.none,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            onPressed: () {
                              print("Pressed Edit");
                            },
                            child: Center(
                              child: Text("Edit", style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),)
                            )),
                ),
              ],
            )));
  }
}
