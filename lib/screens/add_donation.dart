//import 'package:aider/screens/gmap.dart';
import 'package:aider/screens/Login.dart';
import 'package:aider/screens/rec_list.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:aider/networking/posts.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MaterialApp(home: MakeDonation()));
}

List items = ["Food Items", "Medicine", "Clothes"];

class MakeDonation extends StatefulWidget {
  @override
  _MakeDonationState createState() => _MakeDonationState();
}

class _MakeDonationState extends State<MakeDonation> {
  final _description = TextEditingController();
  bool _validatedescription = false;
  final _quantity = TextEditingController();
  bool _validatequantity = false;
  int _value;

  //*************************************taking current location****************
  Future<Position> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
    //print("inside function $position"); //longitude and latitude
  }

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
                    image: AssetImage('images/background.jpg'))),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MAKE A DONATION",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2B2D42)),
                ),
                SizedBox(height: 80.0),
                Row(
                  //Row contains Select Type and Dropdown List
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select Type : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2B2D42)),
                    ),
                    SizedBox(width: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0x802B2D42), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 4)
                        ],
                      ),
                      padding: EdgeInsets.all(5.0),
                      child: DropdownButton(
                        //  focusColor: Color(0x802B2D42),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              items[0],
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
                              items[1],
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
                                items[2],
                                style: TextStyle(
                                  color: Color(0x802B2D42),
                                  fontSize: 15.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              value: 3),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                            print(_value);
                          });
                        },
                      ),
                    )
                  ],
                ), // Select Type ends here
                SizedBox(height: 50),
                // new Divider(),
                Row(
                  //Row contains Description and TextField
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      "Description : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2B2D42)),
                    ),
                    //SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0x802B2D42), width: 2),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 4)
                          ],
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: _description,
                          maxLines: null,
                          cursorColor: Color(0xFF2B2D42),
                          decoration: InputDecoration(
                            labelText: "Description",
                            labelStyle: TextStyle(
                              color: Color(0xFF2B2D42),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                            errorText: _validatedescription
                                ? 'Describe the item.'
                                : null,
                          ),
                        ),
                      ),
                    )
                  ],
                ), // Description ends here
                SizedBox(height: 20.0),
                Row(
                  //Row Contains Quantity and TextField

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50),
                    Text(
                      "Quantity : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2B2D42)),
                    ),
                    // SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0x802B2D42), width: 2),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                spreadRadius: 4)
                          ],
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: _quantity,
                          maxLines: null,
                          cursorColor: Color(0xFF2B2D42),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Quantity",
                            labelStyle: TextStyle(
                              color: Color(0xFF2B2D42),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                            errorText: _validatedescription
                                ? 'Enter the quantity.'
                                : null,
                          ),
                        ),
                      ),
                    )
                  ],
                ), //Quantity ends here
                SizedBox(height: 50.0),
                // Row(
                //   //Row contains Choose Location and Button

                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(width: 90),
                //     Text(
                //       "Location : ",
                //       style: TextStyle(
                //         fontSize: 20.0,
                //         fontFamily: "Montserrat",
                //         fontWeight: FontWeight.bold,
                //         color: Color(0xFF2B2D42),
                //       ),
                //     ),
                //     SizedBox(width: 30), //Choose Location SizedBox to be Edited
                //     // Container(
                //     //   child: ButtonTheme(
                //     //       minWidth: 50.0,
                //     //       height: 50.0,
                //     //       child: FlatButton(
                //     //           shape: RoundedRectangleBorder(
                //     //               borderRadius: BorderRadius.circular(20.0)),
                //     //           color: Color(0xFF2B2D42),
                //     //           onPressed: () async {
                //     //             print('Pressed Location');

                //     //             // Navigator.of(context).pushReplacement(
                //     //             //   MaterialPageRoute(
                //     //             //     builder: (context) => Gmap(),
                //     //             //   ),
                //     //             // );
                //     //           },
                //     //           child: Icon(
                //     //             Icons.add_location_alt_rounded,
                //     //             color: Colors.white,
                //     //           ))),
                //     // ),
                //   ],
                // ), //Button ends here
                SizedBox(height: 60.0),
                ButtonTheme(
                  minWidth: 50.0,
                  height: 60.0,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Color(0xFF2B2D42),
                      onPressed: () async {
                        position = await _getCurrentLocation();
                        if (_description.text.isEmpty) {
                          _validatedescription = true;
                        } else {
                          _validatedescription = false;
                        }
                        if (_quantity.text.isEmpty) {
                          _validatequantity = true;
                        } else {
                          _validatequantity = false;
                        }
                        if (_validatedescription == false &&
                            _validatequantity == false) {
                          /* print(_description.text);
                          print(_quantity.text);
                          print(items[_value - 1]);
                          print(position.latitude);
                          print(_value);*/
                          var response = await createpost(
                              items[(_value - 1)],
                              _description.text,
                              position.latitude,
                              position.longitude,
                              loginid,
                              "false",
                              int.parse(_quantity.text));
                          // print(response["result"]["publisher_id"]);
                          print("pressed submit");

                          if (response["status"] == 200) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => RecipientList(),
                              ),
                            );
                          }
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            )));
  }
}
