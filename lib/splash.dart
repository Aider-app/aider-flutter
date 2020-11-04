import 'package:aider/screens/chooseSection.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _checkForChoose().then((status) {
      if (status) {
        _goToChoose();
      }
    });
  }

  Future<bool> _checkForChoose() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    return true;
  }

  void _goToChoose() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ChooseSection()),
    );
  }

  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Color(0x608d99ae),
                //   decoration: BoxDecoration(
                //       color: Color(0xFFEDF2F4),
                //       image: DecorationImage(
                //         image: AssetImage('images/bg_stripes.png'),
                //       )),
              ),
              Center(
                child: TweenAnimationBuilder(
                  tween: _scaleTween,
                  duration: Duration(milliseconds: 700),
                  builder: (context, scale, child) {
                    return Transform.scale(scale: scale, child: child);
                  },
                  child: Container(
                    height: 200,
                    child: Image(image: AssetImage('images/logosplash.png')),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
