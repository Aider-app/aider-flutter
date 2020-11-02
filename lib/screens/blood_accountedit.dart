import 'package:aider/screens/blood_accountdetails.dart';
import 'package:flutter/material.dart';
import 'package:aider/screens/blooddash.dart';


class Blood_AccountDetails extends StatefulWidget {
  @override
  _Blood_AccountDetailsState createState() => _Blood_AccountDetailsState();
}

class _Blood_AccountDetailsState extends State<Blood_AccountDetails> {
final _description = TextEditingController();
  bool _validatedescription = false;
  final _quantity = TextEditingController();
  bool _validatequantity = false;
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
                builder: (context) => Blooddash(),
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
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'))),
            width: double.infinity,
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
                    SizedBox(width: 15.0),
                    Text(
                      "Name : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 25.0),
                    Container(
                      width: 150.0,
                      height: 18.0,
                      child: TextField(
                            controller: _description,
                            maxLines: null,
                            cursorColor: Color(0xFF2B2D42),
                            decoration: InputDecoration(
                              hintText: "Enter New Name",
                              hintStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0x802B2D42)),
                              errorText: _validatedescription
                                  ? 'Enter New Name'
                                  : null,
                            ),
                          ),
                    ),
                    SizedBox(
                        width:
                            76.0), //sized box might have to remove while actual name is displayed
                    SizedBox(width: 16.7)
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 25),
                    Text(
                      "Phone : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 22.0),
                    Container(
                      width: 150.0,
                      height: 20.0,
                      child: TextField(
                            controller: _description,
                            maxLines: null,
                            cursorColor: Color(0xFF2B2D42),
                            decoration: InputDecoration(
                              hintText: "Enter New Number",
                              hintStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0x802B2D42)),
                              errorText: _validatedescription
                                  ? 'Enter Valid Number'
                                  : null,
                            ),
                          ),
                    ),
                    SizedBox(
                        width:
                            89.0), //sized box might have to remove while actual name is displayed
                    SizedBox(width: 16.7)
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 33),
                    Text(
                      "Email : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Container(
                      width: 150.0,
                      height: 20.0,
                      child: TextField(
                            controller: _description,
                            maxLines: null,
                            cursorColor: Color(0xFF2B2D42),
                            decoration: InputDecoration(
                              hintText: "Enter New Email",
                              hintStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0x802B2D42)),
                              errorText: _validatedescription
                                  ? 'Enter Valid Email'
                                  : null,
                            ),
                          ),
                    ),
                    
                    SizedBox(width: 114.0),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Blood\nGroup : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 25.0),
                    Container(
                      width: 150.0,
                      height: 18.0,
                      child: TextField(
                            controller: _description,
                            maxLines: null,
                            cursorColor: Color(0xFF2B2D42),
                            decoration: InputDecoration(
                              hintText: "Enter New Name",
                              hintStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0x802B2D42)),
                              errorText: _validatedescription
                                  ? 'Enter New Name'
                                  : null,
                            ),
                          ),
                    ),
                    SizedBox(width: 83.0), //sized box might have to remove while actual name is displayed
                  ],
                ),
                SizedBox(height: 90.0),
                Container(
                  width: 100.0,
                  height: 50.0,
                  child: OutlineButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0)),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => BloodDetails(),
                                ),
                              );
                            },
                            child: Center(
                              child: Text("Save", style: TextStyle(
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