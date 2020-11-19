import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Chatscr()));
}

class Chatscr extends StatefulWidget {
  static const String id = 'chat_screen';

  @override
  _ChatscrState createState() => _ChatscrState();
}

class _ChatscrState extends State<Chatscr> {
  List<String> recmsg = [
    "hi",
    "hello",
    "ho you doin",
    "fine",
    "hi",
    "hello",
    "ho you doin",
    "fine",
  ];
  List<String> sendmsg = [];

  bool sendertest = false; //false if messsage recieved

  final TextEditingController _message = new TextEditingController();
//****************to print  messages */
  _messages(sendertest) {
    return Container(
      decoration: BoxDecoration(
          color: sendertest
              ? Color(0xff9597B5) //sent msg
              : Color(0xffA4C0E9), //recieved
          borderRadius: sendertest
              ? BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  // topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  //  bottomRight: Radius.circular(15.0),
                )
              : BorderRadius.only(
                  //  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  // bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                )),
      margin: sendertest
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 100.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 100.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Text(
        "hello",
        style: TextStyle(
            fontSize: 16.0,
            color: Color(0xff2b2d42),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.normal),
      ),
    );
  }

  //************end */

//*************typing box****************** */
  _typingbox() {
    return Container(
      color: Color(0xffffffff),
      height: 60,
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.message_outlined,
                color: Color(0xff2b2d42),
              ),
              onPressed: null),
          Expanded(
            child: TextField(
              controller: _message,
              decoration: InputDecoration.collapsed(
                // border: BorderRadius.all(Radius(10)),
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
            onPressed: () async {
              sendertest = true;
              _messages(sendertest);
              // print(_message.text);
              // if (_message.text.isNotEmpty) {
              //   dynamic response = await send_message(
              //       widget.chatid, _message.text, loginid);
              //   _message.clear();
              // }
              // await fetchmsg(widget.chatid);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2d42),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Name',
            style: TextStyle(
                fontSize: 25.0,
                color: Color(0xffffffff),
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff2b2d42),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                // image: DecorationImage(
                //   image: AssetImage("images/background.jpg"),
                // fit: BoxFit.cover,
                //   ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 30.0),
                    itemCount: recmsg.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _messages(sendertest);
                    }),
              ),
            ),
          ),
          _typingbox(),
        ],
      ),
    );
  }
}
