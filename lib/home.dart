import 'package:design_layout/item.dart';
import 'package:design_layout/login.dart';
import 'package:design_layout/seeAll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _assets = 'assets/drawable-hdpi/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Image.asset('$_assets/MenuBar.png', height: 16,), 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
          },),
        actions: <Widget>[
          IconButton(
          color: Colors.black,
          icon: Image.asset('$_assets/Notofication.png',height: 35,), 
          onPressed: (){},),
          IconButton(
          color: Colors.black,
          icon: Image.asset('$_assets/filter.png',height: 20,), 
          onPressed: (){},),
        ],
      ),
      
      body: ListView(children: [

        Padding( padding:EdgeInsets.fromLTRB(20,10,20,10),
          child: Form(
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(10),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: () {},),
                  hintText: "Search Your Product",
                  hintStyle: TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 0, 
                      style: BorderStyle.none,
                    ),
                  )
          ))))),

        // Category list
        Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Categories', style: TextStyle(fontSize: 22)),
              Text('See all',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
            ],
        )),
        Container(
          height: 85,
          child: ListView.builder(
            padding: EdgeInsets.only(left:28),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0,20),
                child: Card(
                  elevation: 14,
                  child: InkWell(
                    splashColor: Colors.grey.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container( constraints: BoxConstraints(minWidth: 114, minHeight: 64),
                    child: Image.asset("$_assets/Group$index.png",fit: BoxFit.cover,)
                  )),
              ));
            },
        )),

        // Featured list
        Padding(
          padding: EdgeInsets.fromLTRB(30,0,30,16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Featured', style: TextStyle(fontSize: 22)),
              InkWell(
                child: Text('See all',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
                splashColor: Colors.grey.withAlpha(30),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>SeeAllPage(title: "Featured")));
                },
              )
            ],
        )),
        Container(
          height: 240,
          child: ListView.builder(
            padding: EdgeInsets.only(left:28),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              int number = index + 6;
              return Padding(
                padding: EdgeInsets.only(right: 20),
                child: Card(
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
                            child: Image.asset('$_assets/MaskGroup$number.png'),
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
              ));
            },
        )),
        
        //Best sell
        Padding(
          padding: EdgeInsets.fromLTRB(30,31,30,16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Best sell', style: TextStyle(fontSize: 22)),
              InkWell(
                child: Text('See all',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
                splashColor: Colors.grey.withAlpha(100),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>SeeAllPage(title: "Best sell")));
                },
              )
            ],
        )),
        Container(
          height: 240,
          child: ListView.builder(
            padding: EdgeInsets.only(left:28),
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              int number = index + 4;
              return Padding(
                padding: EdgeInsets.only(right: 20),
                child: Card(
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
                            child: Image.asset('$_assets/MaskGroup$number.png'),
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
              ));
            },
        )),
      ]
    ));
  }
}
