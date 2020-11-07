import 'package:aider/screens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:aider/networking/chat.dart';
import 'package:aider/screens/Login.dart';

class Chathome extends StatefulWidget {
  @override
  _ChathomeState createState() => _ChathomeState();
}

class _ChathomeState extends State<Chathome> {
  List<Widget> messages = [];
  List<Widget> finalmessages = [
    Text("No Messages"),
  ];
  @override
  void initState() {
    fetchconnection(loginid);
    super.initState();
  }

  fetchconnection(email) async {
    finalmessages.clear();
    dynamic connections = await getconnections(email);
    List l = connections["response"];
    print(connections["response"].length);
    l.forEach(
      (element) {
        messages.add(
          chatsection(element["sender_id"], element["chat_id"], context),
        );
      },
    );
    setState(() {
      finalmessages = messages;
    });
    /*for (int i = 0; i < connections["response"].length; i++) {
      l.add(chatsection(connections["response"][i]["sender_id"], context));
    }
    print("printing\n $l");
    setState(() {
      //list = l;
      if (l.length == 0) {
        list = [
          chatsection("loading", context),
        ];
      } else {
        list = l;
      }
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //***********bottom notched bar********************
      bottomNavigationBar: new BottomAppBar(
        color: Color(0xff2B2D42),
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
      //**************bottom notched bar ends*******************8
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 80,
                  child: Center(
                    child: Text(
                      "AIDERConnect",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(children: finalmessages
                    /*list*/ /*[
                    SizedBox(height: 20.0),
                    /*chatsection("1", context),
                    // SizedBox(height: 20.0),
                    chatsection("2", context),*/
                    // SizedBox(height: 20.0),
                    /* chatsection("3", context),
                    // SizedBox(height: 20.0),
                    chatsection(4, context),
                    // SizedBox(height: 20.0),
                    chatsection(5, context),
                    // SizedBox(height: 20.0),
                    chatsection(6, context),
                    // SizedBox(height: 20.0),
                    chatsection(7, context),
                    // SizedBox(height: 20.0),
                    chatsection(8, context),
                    // SizedBox(height: 20.0),
                    chatsection(9, context),
                    // SizedBox(height: 20.0),
                    chatsection(10, context),
                    // SizedBox(height: 20.0),
                    chatsection(11, context),
                    // SizedBox(height: 20.0),
                    chatsection(12, context),
                    // SizedBox(height: 20.0),
                    chatsection(13, context),*/
                    SizedBox(height: 20.0),
                  ],*/
                    ),
              )),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget chatsection(name, id, context) {
  return Container(
    height: 90,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xff2b2d42)),
    ),
    child: FlatButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Chatscreen(
                  chatid: id,
                  receiverid: name,
                )));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
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
                'Message ',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Color(0x802B2D42)),
              ),
            ],
          ),

          //unread message notif
          /* Container(
            height: 30,
            width: 35,
            decoration: BoxDecoration(
              color: Color(0xff2b2d42),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                '$val',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Color(0xFFFFFFFF)),
              ),
            ),
          ),*/
        ],
      ),
    ),
  );
}
