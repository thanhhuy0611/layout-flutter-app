import 'package:design_layout/home.dart';
import 'package:design_layout/login.dart';
import 'package:design_layout/welcome.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: new IconButton(
          padding: EdgeInsets.only(left: 30.5),
          iconSize: 24,
          icon: Image.asset('assets/drawable-hdpi/Shape.png', width: 25,), 
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(26.5),
        child: ListView(
          children: <Widget>[
            Text('Sign up', style: TextStyle(fontSize:30)),
            SizedBox(height: 60),
            Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Type your name"
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Please enter email',
                  ),
                ),
                SizedBox(height:10),
                TextFormField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please enter password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height:48),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: RaisedButton(
                    elevation: 10,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(0),
                    onPressed: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>HomePage())
                    );},
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [Color(0xFF667EEA),Color(0xFF64B6FF)])
                      ),
                      child: Container(
                        constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
                        alignment: Alignment.center,
                        child: Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ),
                    )
                  )
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account ?",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey)),
                    FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Container(
                        child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.normal)),
                      ),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>LoginPage())
                      );},
                    )
                  ],  
                )
            ],))
          ],
        )
      )
    );
  }
}