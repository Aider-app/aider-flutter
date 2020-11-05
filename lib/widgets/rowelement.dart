import 'package:aider/screens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:aider/screens/chathome.dart';
import 'package:aider/screens/Login.dart';
import 'package:aider/networking/chat.dart';

Widget rowelement(
    item_type, item_name, publisher, post_id, distance, quantity, context) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              '$item_name',
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
              '$distance m',
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
                              "In need of: $item_name",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Color(0xFF2B2D42)),
                            ),
                            Text(
                              "quantity: $quantity",
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
              onPressed: () async {
                print('Pressed accept request');
                dynamic response = await acceptchat(publisher, loginid, "true");
                print(response["status"]);
                if (response["status"] == 200) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Chatscreen(
                        chatid: response["response"]["chat_id"],
                      ), //Chathome(), //go to blood dashboard
                    ),
                  );
                }
              },
              child: Text(
                'Chat',
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
