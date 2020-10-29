import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//ithaanu google maps sdk api key:
const apikey = 'AIzaSyAYf5hXJY84mYCsgje7ZwwTk8TxaWSieQM';
void main() {
  runApp(MaterialApp(home: Gmap()));
}

class Gmap extends StatefulWidget {
  @override
  _gmapState createState() => _gmapState();
}

class _gmapState extends State<Gmap> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2B2D42),
          title: Center(
            child: Text(
              'Choose location',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFFFFFFFF),
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Stack(
          children: [
            //map
            GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(9.9312, 76.2673),
                zoom: 12,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //searchbox section
                  SizedBox(height: 20.0),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0x95FFFFFF),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff2b2d42),
                        ),
                        //fillColor: Color(0x50ffffff),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFF2B2D42),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
