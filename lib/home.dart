import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Text('helo', style:TextStyle(color:Colors.blue)),
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
    height:200.0,
    child: new Carousel(
      boxFit:BoxFit.cover,
      images:[
        AssetImage('images/1.jpg'),
        AssetImage('images/2.jpg'),
        AssetImage('images/3.jpg'),
        AssetImage('images/4.jpg'),
      ],
      autoplay: false,
      animationCurve:Curves.fastOutSlowIn,
      animationDuration:Duration(milliseconds: 1000),
      dotSize: 8.0,
      indicatorBgPadding:10.0,
      dotColor:Colors.lightBlueAccent ,

    )
  );

    return Scaffold(
      appBar: new AppBar(
        elevation:0.1,
        title: Center(child: Text('myApp')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.book, color: Colors.white,), onPressed: (){}),
        ],
      ),

      drawer:new Drawer(
        child: new ListView(
          children: <Widget>[

//            header

          new UserAccountsDrawerHeader(
            accountName: Text('bura'), accountEmail: Text('belay.bura@gmail.com'),
          currentAccountPicture: new GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.red,
              child:Icon(Icons.person, color: Colors.white,)
            ),
            ),
              decoration:new BoxDecoration(
                  color:Colors.red
              )
          ),

//            body
          InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('home page'),
              leading:Icon(Icons.home)
                
            ),
          ),

            InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('home page'),
              leading:Icon(Icons.home)

            ),
          ),

            InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('books'),
              leading:Icon(Icons.library_books)

            ),
          ),

            InkWell(
            onTap:(){},
            child: ListTile(
              title: Text('Time Left'),
              leading:Icon(Icons.timer)

            ),
          ),

            Divider(),

            InkWell(
              onTap:(){},
              child: ListTile(
                  title: Text('Settings'),
                  leading:Icon(Icons.settings, color: Colors.blue)
              ),
            ),

            InkWell(
              onTap:(){},
              child: ListTile(
                  title: Text('help'),
                  leading:Icon(Icons.help, color: Colors.green)
              ),
            ),



          ],
        )
      ),

//        body
    body:new ListView(
        children:<Widget>[
          image_carousel
        ]
    )


    );
  }
}
