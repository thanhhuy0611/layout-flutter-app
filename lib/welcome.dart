import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(18.0,80,18,80),
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
            Center(child: Image.asset('assets/drawable-hdpi/Image.png', height: 216, width: 339,)),
            SizedBox(height: 110),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Log in'), 
                  onPressed: () {},
                ),
              ]
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('Signup', style: TextStyle(color: Colors.black),), 
                  onPressed: () {},
                ),
              ]
            ),
          ]
        )
      ),
    );
  }
}