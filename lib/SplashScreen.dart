import 'package:design_layout/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    _moclCheckForSession().then((status) {
      if (status) {
        _navigatorTo(MyHomePage(title: "My Home page"));
      } else {
        _navigatorTo(WelcomePage());
      }
    });
  }

  Future<bool> _moclCheckForSession() async {
    await Future.delayed(Duration(seconds: 4), () {});

    return false;
  }

  void _navigatorTo(Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF667EEA),
                Color(0xFF64B6FF),
              ],
            ),
          ),
          child: Center(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(70,210,70,210),
                    child: Image.asset(
                      'assets/drawable-hdpi/Logo.png',
                      width: 238,
                      height: 238,
                  )),
                  // SizedBox(height: 209),
                  Center(child: Image.asset(
                    'assets/drawable-hdpi/icon.png',
                    height: 40,
                    width: 20,
                  ))
                ],
          ))),
    );
  }
}
