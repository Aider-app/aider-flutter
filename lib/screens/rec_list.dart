import 'package:aider/screens/chathome.dart';
import 'package:aider/screens/donordash.dart';
import 'package:flutter/material.dart';
import 'package:aider/widgets/rowelement.dart';
import 'package:aider/networking/posts.dart';
import 'package:aider/screens/Login.dart';
import 'package:aider/screens/chatscreen.dart';

class RecipientList extends StatefulWidget {
  @override
  _RecipientListState createState() => _RecipientListState();
}

class _RecipientListState extends State<RecipientList> {
  int val = 1;
  List<Widget> list = [];
  List<Widget> l = [];
  @override
  void initState() {
    // TODO: implement initState
    fetchposts();
    super.initState();
  }

  fetchposts() async {
    var posts = await getposts(
      position.latitude,
      position.longitude,
      "true",
    );
    for (int i = 0; i < posts.length; i++) {
      l.add(
        rowelement(
            posts[i]["data"]["item_type"],
            posts[i]["data"]["item_name"],
            posts[i]["data"]["publisher_id"],
            posts[i]["data"]["post_id"],
            posts[i]["distance"],
            posts[i]["data"]["quantity"],
            context),
      );
      l.add(
        SizedBox(height: 20.0),
      );
    }
    ;

    setState(() {
      //list = l;
      if (l.length == 0) {
        list = [
          rowelement("loading", "loading", "loading", "loading", "loading",
              "loading", context)
        ];
      } else {
        list = l;
      }
    });
    // print("inside rec_list");
    // print(l);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //appBar: AppBar(
          //   title: Image.asset('images/logo.png',),
          //  backgroundColor: Color(0xFFEDF2F4),
          //also need a go back button to previous page
          // ),
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
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
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 80,
                        child: Center(
                          child: Text(
                            "AVAILABLE RECIPIENTS",
                            style: TextStyle(
                                fontSize: 28.0,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                        children:
                            list /*[
                          SizedBox(height: 20.0),
                          rowelement(1, context),
                          SizedBox(height: 20.0),
                          rowelement(2, context),
                          SizedBox(height: 20.0),
                          rowelement(3, context),
                          SizedBox(height: 20.0),
                          rowelement(4, context),
                          SizedBox(height: 20.0),
                          rowelement(5, context),
                          SizedBox(height: 20.0),
                          rowelement(6, context),
                          SizedBox(height: 20.0),
                          rowelement(7, context),
                          SizedBox(height: 20.0),
                        ]*/
                        ,
                      ),
                    ))
                  ],
                ),
              ))),
    );
  }
}
