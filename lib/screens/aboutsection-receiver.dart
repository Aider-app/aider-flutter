import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aider/screens/Login.dart';
import 'package:rating_dialog/rating_dialog.dart';

class Best extends StatefulWidget {
  @override
  _BestState createState() => _BestState();
}

class _BestState extends State<Best> {
  int getPageIndex = 0;
  PageController pageController;
  whenPageChanges(int pageIndex) {
    setState(() {
      print(pageIndex);
      this.getPageIndex = pageIndex;
    });
  }

  void initState() {
    super.initState();
    pageController = PageController();
  }

  onTabChangePage(int pageIndex) {
    print(pageIndex);

    pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: (context) => Donordash(),
          //   ),
          // );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //bottom notched bar ends
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "MY ACCOUNT",
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80.0),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width - 50,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(),
                      margin: EdgeInsets.all(0),
                      child: CupertinoTabBar(
                        currentIndex: getPageIndex,
                        onTap: onTabChangePage,
                        // backgroundColor: Colors.blueGrey,

                        activeColor: Colors.white,
                        inactiveColor: Colors.black,
                        items: [
                          BottomNavigationBarItem(
                              icon: Container(
                            decoration: BoxDecoration(
                                color: getPageIndex == 0
                                    ? Color(0xFF2B2D42)
                                    : Color(0xFFEDF2F4),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10))),
                            width: double.maxFinite,
                            height: 100,
                            child: Center(
                              child: Text(
                                "Account Details",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                          BottomNavigationBarItem(
                              icon: Container(
                            decoration: BoxDecoration(
                                color: getPageIndex == 1
                                    ? Color(0xFF2B2D42)
                                    : Color(0xFFEDF2F4),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10))),
                            width: double.maxFinite,
                            height: double.maxFinite,
                            child: Center(
                              child: Text(
                                "My Posts",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                    Container(
                      child: Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF2B2D42), width: 2),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: PageView(
                            children: <Widget>[details(), Posts()],
                            controller: pageController,
                            onPageChanged: whenPageChanges,
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  //    padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
                  color: Color(0xFF2B2D42),
                  onPressed: () {
                    print('pressed');
                    createdialogbox(context);
                  },
                  child: Text(
                    'Rate donors',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  createdialogbox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.redAccent[600],
              title: Text("Donors:",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xff2b2d42))),
              content: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('donor1',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff2b2d42))),
                          SizedBox(width: 50.0),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //    padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
                            color: Color(0xFF2B2D42),
                            onPressed: () {
                              print('pressed');
                              //*********************************Rating dialogue box*********************** */
                              _showrating();
                            },
                            child: Text(
                              'Rate',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //*************second donor***************** */
                      Row(
                        children: [
                          Text('donor1',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Color(0xff2b2d42))),
                          SizedBox(width: 50.0),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //    padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
                            color: Color(0xFF2B2D42),
                            onPressed: () {
                              print('pressed');
                              //*********************************Rating dialogue box*********************** */
                              _showrating();
                            },
                            child: Text(
                              'Rate',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ));
        });
  }

  void _showrating() {
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: Icon(
              Icons.star,
              color: Color(0xff2b2d42),
              size: 50.0,
            ),
            //your own image/icon widget
            title: "Rating",
            description: "Rate your donor.",
            submitButton: "SUBMIT",
            // alternativeButton:
            //    "Contact us instead?", // optional
            // positiveComment:
            //    "We are so happy to hear :)", // optional
            // negativeComment:
            //    "We're sad to hear :(", // optional
            // accentColor: Colors.red, // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
              // TODO: open the app's page on Google Play / Apple App Store
            },
            //  onAlternativePressed: () {
            //  print("onAlternativePressed: do something");
            // TODO: maybe you want the user to contact you instead of rating a bad review
            //  },
          );
        });
  }

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  details() {
    return ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 38.0),
              Text(
                "Name : $loggeduser", // Add $loggeduser after semicolon
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2D42),
                ),
              ),
            ],
          ),
          SizedBox(
              width:
                  00.0), //sized box might have to remove while actual name is displayed
          SizedBox(width: 0 /*16.7*/),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 38.0),
              Text(
                "Organization Id : $id", //Add  $rating
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2D42),
                ),
              ),
              SizedBox(
                  width:
                      00.0), //sized box might have to remove while actual name is displayed
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 38),
              Text(
                "Phone : $contact", // $contact
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2D42),
                ),
              ),
              SizedBox(width: 0
                  /*245.0*/), //sized box might have to remove while actual name is displayed
              SizedBox(width: 16.7)
            ],
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 38),
              Text(
                "Email :\n$loginid", //Add \n $loginid
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2D42),
                ),
              ),
              /* SizedBox(width: 202.0),
                    SizedBox(width: 16.7)*/
            ],
          ),
          SizedBox(height: 30.0),
          /* Container(
            width: 0.0,
            height: 40.0,
            child: OutlineButton(
                splashColor: Color(0xFF2B2D42),
                // borderSide: BorderSide.none,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                onPressed: () {
                  print("Pressed Edit");
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => DonorEdit(),
                  //   ),
                  // );
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
          ),*/
        ]);
  }
}

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Posttile(
        name: "hi",
        id: 10,
      ),
      Posttile(
        name: "hello",
        id: 20,
      )
    ]);
  }
}

class Posttile extends StatelessWidget {
  final String name;
  final int id;
  Posttile({this.name, this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 1),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEDF2F4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xFF2B2D42)),
                  ),
                ],
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                //    padding: EdgeInsets.fromLTRB(29.5, 20, 29.5, 20),
                color: Color(0xFF2B2D42),
                onPressed: () {
                  print('pressed');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Donorlogin()),
                  // );
                },
                child: Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
