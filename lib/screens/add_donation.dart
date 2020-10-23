import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MakeDonation()
  ));
}


class MakeDonation extends StatefulWidget {
  @override
  _MakeDonationState createState() => _MakeDonationState();
}

class _MakeDonationState extends State<MakeDonation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEDF2F4),
          image: DecorationImage(
            image: AssetImage('images/background.jpg')
          )
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Make a Donation",
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 80.0),
            Row(                                              //Row contains Select Type and Dropdown List
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Select Type : ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold
                ),),
                ///////DROPDOWN TO BE ADDED HERE
              ],
            ),                                               // Select Type ends here
            SizedBox(height: 20.0),
            Row(                                            //Row contains Description and TextField
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Description : ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 20),
                 Container(
                    width: 200.0,
                    child: TextField(
                      cursorColor: Color(0xFF2B2D42),
                      decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                        Radius.circular(110.0),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFF2B2D42),
                          width: 0.0),
                          ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Description",
                        hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(0x802B2D42)
                      ),
                    ),
                  ),
                )
              ],
            ),                                            // Description ends here
            SizedBox(height: 20.0),
            Row(                                          //Row Contains Quantity and TextField
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Quantity : ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 44.0),
               Container(
                    width: 200.0,
                    child: TextField(
                      cursorColor: Color(0xFF2B2D42),
                      decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                        const Radius.circular(110.0),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFF2B2D42),
                          width: 0.0),
                          ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Quantity",
                        hintStyle: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color(0x802B2D42)
                      ),
                    ),
                  ),
                )
              ],
            ),                                            //Quantity ends here
            SizedBox(height: 20.0),
            Row(                                          //Row contains Choose Location and Button
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Choose Location : ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 30), //Choose Location SizedBox to be Edited
                 Container(
                   child: ButtonTheme(
                  minWidth: 50.0,
                  height: 50.0,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Color(0xFF2B2D42),
                      onPressed: () {
                        print('Pressed Location');
                      },
                      child: Icon(Icons.add_location_alt_rounded, color: Colors.white,))),
                ),
                 
              ],
            ),                              //Button ends here
            SizedBox(height: 80.0),
            ButtonTheme(
                  minWidth: 50.0,
                  height: 60.0,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Color(0xFF2B2D42),
                      onPressed: () {
                        print('Pressed Submit');
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
          
          )
      )
    );
  }
}