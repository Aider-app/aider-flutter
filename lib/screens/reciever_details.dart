import 'package:aider/screens/reciever_edit.dart';
import 'package:flutter/material.dart';
import 'package:aider/screens/recieverdash.dart';

class RecipientDetails extends StatefulWidget {
  @override
  _RecipientDetailsState createState() => _RecipientDetailsState();
}

class _RecipientDetailsState extends State<RecipientDetails> {
//  final _description = TextEditingController();
//   bool _validatedescription = false;
//   final _quantity = TextEditingController();
//   bool _validatequantity = false;
//   int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Recieverdash(),
                ),
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
                    "MY ACCOUNT",
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
                      SizedBox(width: 10.0),
                      Text(
                        "ID : ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          width:
                              290.0), //sized box might have to remove while actual name is displayed
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 38),
                      Text(
                        "Address : ",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 179.0),
                      SizedBox(width: 16.7)
                    ],
                  ),
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
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => RecieverEdit(),
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
                          ),
                        ))),
                  ),
                ],
              ))),
    );
  }
}
