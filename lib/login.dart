import 'package:design_layout/home.dart';
import 'package:design_layout/signup.dart';
import 'package:design_layout/welcome.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

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
        child: ListView(children: <Widget>[
          Text('Login', style: TextStyle(fontSize:30)),
          SizedBox(height: 60),
          Form(
            key: _formKey, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Please enter your email',
                  ),
                ),
                SizedBox(height:10),
                TextFormField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please enter your password',
                  ),
                  obscureText: true,
                ),
                SizedBox(height:48),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: RaisedButton(
                    elevation: 10,
                    color: Colors.transparent,
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: <Color>[
                            Color(0xFF667EEA),
                            Color(0xFF64B6FF),
                          ])
                      ),
                      child: Container(
                        constraints: BoxConstraints(minHeight: 50, minWidth: double.infinity),
                        alignment: Alignment.center,
                        child: Text('Log in', style: TextStyle(color: Colors.white, fontSize: 16),)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have account ?",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.grey)),
                    FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Container(
                        child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.normal)),
                      ),
                      onPressed: () {Navigator.push(
                        context, MaterialPageRoute(builder: (context)=>SignupPage())
                      );},
                    )
                  ],
                )
              ],
            ),
          ),
        ],)
      ),
    );
  }
}