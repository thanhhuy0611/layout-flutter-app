import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {Navigator.pop(context);}),
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.search, size: 30,),
            onPressed: (){},),
          IconButton(
            color: Colors.black,
            icon: Image.asset('assets/drawable-hdpi/home/Notofication.png'), 
            onPressed: (){},),
        ],
      ),
      body: ListView(
        children: [
          Padding(padding:EdgeInsets.fromLTRB(24.5,0,24.5,10), 
            child: Card(
              elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(aspectRatio: 326.5/175, child: Image.asset('assets/drawable-hdpi/item1.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      SizedBox(height: 25),
                      Text("Woman T-shirt", style: TextStyle(fontSize:25)),
                      SizedBox(height: 10),
                      Text("\$55.00",style: TextStyle(fontSize:20, color: Color(0xFF667EEA))),
                  ]),
              ],)
          )),
          Divider(color: Colors.grey),
          Padding(padding:EdgeInsets.fromLTRB(24.5,10,24.5,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(child: 
                  Row(children: <Widget>[
                    SizedBox(
                      width: 65,
                      height: 35,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        color: Color(0xFF667EEA),
                        onPressed: (){},
                        child: 
                          Text('4.5',style: TextStyle(fontSize:18, color: Colors.white)),
                      ),
                    ),
                    Padding(padding:EdgeInsets.only(left: 16),
                      child: Text('Very Good',style: TextStyle(fontSize:18))),
                  ],)
                ),  
                  Text('49 Review',style: TextStyle(fontSize:16, color: Color(0xFF667EEA))),
            ],),
          ),
          Divider(color: Colors.grey),
          Padding(padding:EdgeInsets.fromLTRB(24.5,10,24.5,10), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Descriptrion',style: TextStyle(fontSize: 18),),
                SizedBox(height:11),
                Text('A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.',
                  style: TextStyle(fontSize: 16),
                )
              ]
            )
          ),
          Divider(color: Colors.grey),
          Padding(padding:EdgeInsets.fromLTRB(24.5,10,24.5,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Select size',style: TextStyle(fontSize:20, fontWeight: FontWeight.w600)),
                Text('Select color',style: TextStyle(fontSize:20))
            ],),
          ),
          Divider(color: Colors.grey),
          Padding(padding:EdgeInsets.fromLTRB(65,10,65,50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey[300],
                    onPressed: (){},
                    child: Text('S',style: TextStyle(fontSize:18, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Color(0xFF667EEA),
                    onPressed: (){},
                    child: Text('M',style: TextStyle(fontSize:18, color: Colors.white)),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Colors.grey[300],
                    onPressed: (){},
                    child: Text('S',style: TextStyle(fontSize:18, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: Colors.white,
                    onPressed: (){},
                    child: Text('XXL',style: TextStyle(fontSize:18, color: Colors.black)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 55,
            child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Color(0xFF667EEA),
              onPressed: (){},
              child: Text('BUY NOW',style: TextStyle(fontSize:20, color: Colors.white)),
            ),
          )
        ]
      )
    );
  }
}