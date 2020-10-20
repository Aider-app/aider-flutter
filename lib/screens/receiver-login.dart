import 'package:flutter/material.dart';
import 'package:aider/screens/Recievercreateacc.dart';

class Receiver_login extends StatefulWidget {
  @override
  _Receiver_loginState createState() => _Receiver_loginState();
}

class _Receiver_loginState extends State<Receiver_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEDF2F4),
          image: DecorationImage(
            image: AssetImage('images/bg_stripes.png'),
            //fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(),
            Text(
              'RECIPIENT LOG IN',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 72.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0x802B2D42)),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color(0x802B2D42)),
                ),
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //GO TO CREATE NEW ACC
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RecieverCreateAcc(),
                            ),
                          );
                        },
                        child: Text(
                          'New user? Create an account.',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Color(0xFF2B2D42)),
                        )),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        onPressed: () {
                          print('Pressed forgot password');
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Color(0xFF2B2D42)),
                        )),
                  ]),
            ),
            SizedBox(
              height: 72.0,
            ),
            //SizedBox(),
            FlatButton(
              minWidth: 50.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Color(0xFF2B2D42),
              onPressed: () {
                print('pressed');
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            FlatButton(
              minWidth: 50.0,
              height: 60.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Color(0xFF2B2D42),
              onPressed: () {
                print('pressed');
              },
              child: Text(
                'Blood Donation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FlatButton(
              color: Color(0xFF2B2D42),
              textColor: Colors.white,
              onPressed: (){
                createdialogbox(context);
              },
              child: Text(
                "PopUp"
              ),
            )
          ],
        ),
      ),
    );
  }
}

createdialogbox(BuildContext context)
{
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.redAccent[600],
      title : Text("Alert", style: TextStyle(fontFamily: "Montserrat-Bold.ttf"),),
      content: Text("The credentials you have entered already belongs to an account. Try Again",
       style: TextStyle(fontFamily: "Montserrat-Bold.ttf"),
    )
  );
  });
}