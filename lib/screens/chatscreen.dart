import 'package:flutter/material.dart';
import 'package:aider/networking/chat.dart';
import 'package:aider/screens/Login.dart';

class Chatscreen extends StatefulWidget {
  final chatid;
  final receiverid;
  Chatscreen({this.chatid, this.receiverid});
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

List<Widget> messages = [];
List<Widget> finalmessages = [
  Text("No Messages"),
];

class _ChatscreenState extends State<Chatscreen> {
  final _message = TextEditingController(); //for typed messages
  @override
  void initState() {
    // TODO: implement initState
    fetchmsg(widget.chatid);
    super.initState();
  }

  fetchmsg(int id) async {
    finalmessages.clear();
    dynamic message = await getchat(id);
    List l = message["response"];
    l.forEach(
      (element) {
        messages.add(
          SizedBox(
            height: 10,
          ),
        );
        messages.add(
          Text(
            element["message"],
            textAlign:
                element["author"] == loginid ? TextAlign.end : TextAlign.start,
          ),
        );
      },
    );

    setState(() {
      finalmessages = messages;
    });
    print("messages : $messages");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          title: Image.asset(
            'images/logo.png',
          ),
          backgroundColor: Color(0xFFEDF2F4),
        ),*/
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
                              widget.receiverid,
                              style: TextStyle(
                                  fontSize: 16.0,
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
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: finalmessages,
                    ) /*Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: finalmessages,
                      ),*/
                        ),
                  ),
                  //messages area ends
                  //typing and sending area
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Color(0xff2b2d42)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(100)),
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      height: 50,
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
                              print(_message.text);
                              if (_message.text.isNotEmpty) {
                                dynamic response = await send_message(
                                    widget.chatid, _message.text, loginid);
                                _message.clear();
                              }
                              await fetchmsg(widget.chatid);
                            },
                          ),
                        ],
                      ),
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
