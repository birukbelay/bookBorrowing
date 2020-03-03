import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my imports
import 'package:flutter_proj_n/components/horizontal_listview.dart';
import 'package:flutter_proj_n/components/books.dart';
import 'package:flutter_proj_n/components/drawer.dart';
import 'package:flutter_proj_n/pages/borrowed.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text('helo', style: TextStyle(color: Colors.blue)),
    );
  }
}

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
        height: 150.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/1.jpg'),
            AssetImage('images/2.jpg'),
            AssetImage('images/3.jpg'),
            AssetImage('images/4.jpg'),
          ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          indicatorBgPadding: 2.0,
          dotBgColor: Colors.transparent,
        ));

    return Scaffold(
        appBar: new AppBar(

          elevation: 0.1,
          title: Center(child: Text('myApp')),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.book,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Borrowed()));
                }),
          ],
        ),
        drawer: new Drawer(
            child: DrawerToggle(),),

//        body
        body: new ListView(children: <Widget>[
          image_carousel,

          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new Text('Categories'),
          ),

//          horizontal list view
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new Text('New Books'),
          ),
//grid view
          Container(
            height: 400,
            child: Books(),
          ),


          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new Text('New Books'),
          ),

          Container(
            height: 400,
            child: Books(),
          ),

          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: new Text('New Books'),
          ),

        ]));
  }
}
