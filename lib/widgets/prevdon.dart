import 'package:flutter/material.dart';

Widget predon(BuildContext context, val) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 50.0,
        ),
        Text(
          'Donation #$val',
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
                          "Donated to: ",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Color(0xFF2B2D42)),
                        ),
                        Text(
                          "Donated items: ",
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
                          "Location: ",
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
