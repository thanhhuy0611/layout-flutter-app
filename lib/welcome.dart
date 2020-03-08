import 'package:design_layout/SplashScreen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  void _navigatorTo(Widget page) {
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) =>  page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(0,80,0,80),
          children: <Widget>[
            Center(child: RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: TextStyle(color: Color(0xFF707070), fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Bolt',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )
                ]
              ),
            )),
            SizedBox(height: 10),
            Center(child: Text('Explore Us',
              style: TextStyle(color: Color(0xFF707070), fontSize: 18),
            )),
            SizedBox(height: 174),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Center(
                child: Image.asset('assets/drawable-hdpi/Image.png', height: 216, width: 339,)
              ),
            ),
            SizedBox(height: 110),
            Container(
              padding: EdgeInsets.fromLTRB(65, 0, 65, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      _navigatorTo(SplashScreen()); // push to log in
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        gradient: LinearGradient(
                          stops: [0,0.8],
                          colors: <Color>[
                            Color(0xFF667EEA),
                            Color(0xFF64B6FF),
                          ]
                        )
                      ),
                      padding: EdgeInsets.all(0.0),
                      child: Container(
                        alignment: Alignment.center,
                        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
                        child: Text(
                        'Log in',
                        style: TextStyle(fontSize: 16, color: Colors.white)
                      )),
                    ),
                  ),
                  SizedBox(height: 15),
                  FlatButton(
                    onPressed: () {
                      _navigatorTo(SplashScreen());
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
                      alignment: Alignment.center,
                      child: Text(
                        'Signup',
                        style: TextStyle(fontSize: 16, color: Colors.black)
                    )),
                  ),
                ],
              ),  
            )
          ]
        )
      ),
    );
  }
}