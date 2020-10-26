import 'package:flutter/material.dart';

class DonorDetails extends StatefulWidget {
  @override
  _DonorDetailsState createState() => _DonorDetailsState();
}

class _DonorDetailsState extends State<DonorDetails> {
  final _description = TextEditingController();
  bool _validatedescription = false;
  final _quantity = TextEditingController();
  bool _validatequantity = false;
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //bottom notched bar
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
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     // builder: (context) => Donordash(),
            //   ),
            // );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //bottom notched bar ends
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: BoxDecoration(
                color: Color(0xFFEDF2F4),
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'))),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "My Account",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 80.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      "Name : ",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 200.0), 
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: OutlineButton(
                        borderSide: BorderSide.none,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          onPressed: (){
                            print("Pressed Name Edit");
                          },
                           child: Icon(
                             Icons.create_rounded,
                             color: Colors.black,
                             size: 20.0
                           )
                        ),
                    ),
                    SizedBox(width: 16.7)
                    
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.0),
                    Text(
                      "Rating : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 264.0), 
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 18),
                    Text(
                      "Phone : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   SizedBox(width: 195.0), 
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: OutlineButton(
                          borderSide: BorderSide.none,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          onPressed: (){
                            print("Pressed Phone Edit");
                          },
                          child: Center(
                            child: Icon(
                              Icons.create_rounded,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          )
                        ),
                    ),
                    SizedBox(width: 16.7)
                    
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 38),
                    Text(
                      "Email : ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 202.0), 
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: OutlineButton(
                          borderSide: BorderSide.none,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                          onPressed: (){
                            print("Pressed Phone Edit");
                          },
                          child: Center(
                            child: Icon(
                              Icons.create_rounded,
                              color: Colors.black,
                              size: 20.0,
                            ),
                          )
                        ),
                    ),
                    SizedBox(width: 16.7)
                    
                  ],
                ),
                SizedBox(height: 60.0),
                ],
            )));
  }
}
