import 'package:design_layout/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeeAllPage extends StatefulWidget {
  String title;
  SeeAllPage({
    Key key,
    this.title,
  });
  @override
  _SeeAllPageState createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {

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
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: List.generate(4, (index) {
            final int number1 = index + 4;
            final int number2 = 9-index;
            if (index == 0){
              return
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(widget.title,
                  style: TextStyle(fontSize: 30),
                )
              );
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    splashColor: Colors.grey.withAlpha(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ItemPage()));
                    },
                    child: Container(
                      width: 150,
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 5.0 / 6.0,
                            child: Image.asset('assets/drawable-hdpi/home/MaskGroup$number1.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              SizedBox(height: 11),
                              Text("\$55.00"),
                              SizedBox(height: 7),
                              Text("Woman T-shirt"),
                          ])
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    splashColor: Colors.grey.withAlpha(30),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>ItemPage()));
                    },
                    child: Container(
                      width: 150,
                      height: 240,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 5.0 / 6.0,
                            child: Image.asset('assets/drawable-hdpi/home/MaskGroup$number2.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              SizedBox(height: 11),
                              Text("\$55.00"),
                              SizedBox(height: 7),
                              Text("Woman T-shirt"),
                          ])
                        ],
                      ),
                    ),
                  ),
                ),
            ]);
          })
        )
      ),
    );
  }
}