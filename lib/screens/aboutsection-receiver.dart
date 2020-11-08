import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aider/screens/Login.dart';

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
                            children: <Widget>[details(), posts(context)],
                            controller: pageController,
                            onPageChanged: whenPageChanges,
                            // physics: NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
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
                "Org Id :$id", //Add  $rating
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
                "Phone :$contact", // $contact
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
                "Email :\n $loginid", //Add \n $loginid
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

  Widget posts(context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff2b2d42)),
        ),
        child: FlatButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => Chatscreen(
            //           chatid: id,
            //           receiverid: name,
            //         )));
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            "Post #1",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color(0xFF2B2D42)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
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
                  )
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
        ));
  }
}
