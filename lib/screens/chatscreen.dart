import 'package:aider/screens/chathome.dart';
import 'package:flutter/material.dart';
import 'package:aider/networking/chat.dart';

class Chatscreen extends StatefulWidget {
  final chatid;
  Chatscreen({this.chatid});
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final _message = TextEditingController(); //for typed messages
  @override
  void initState() {
    // TODO: implement initState
    getchat(widget.chatid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Image.asset('images/logo.png',),
        //   backgroundColor: Color(0xFFEDF2F4),
        // ),
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
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //namebar
                  Center(
                    child: Container(
                      height: 70,
                      color: Color(0xff2b2d42),
                      child: Center(
                        child: Row(
                          children: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                            Text(
                              'Name',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Color(0xffffffff),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //namebar ends
                  //messages will be displayed here
                  Expanded(
                      child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("hai bro"),
                        Text("hai bro"),
                      ],
                    ),
                  )),
                  //messages area ends
                  //typing and sending area
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    height: 70,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.image,
                              color: Color(0xff2b2d42),
                            ),
                            onPressed: null),
                        Expanded(
                          child: TextField(
                            controller: _message,
                            decoration: InputDecoration.collapsed(
                              hintText: 'Type your message',
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: Color(0x802b2d42),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Color(0xff2b2d42),
                            ),
                            onPressed: null),
                      ],
                    ),
                  ),
                  //typing and sending area ends.
                ],
              ),
            )),
      ),
    );
  }
}
