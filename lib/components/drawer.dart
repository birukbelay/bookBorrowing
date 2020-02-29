import 'package:flutter/material.dart';

import 'package:flutter_proj_n/pages/borrowed.dart';

class DrawerToggle extends StatefulWidget {
  @override
  _DrawerToggleState createState() => _DrawerToggleState();
}

class _DrawerToggleState extends State<DrawerToggle> {
  @override
  Widget build(BuildContext context) {
    return ListView(
          children: <Widget>[

//            =======  header ========

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

//          ====borrowed=====

            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Borrowed()));
              },
              child: ListTile(
                  title: Text('borrowed'),
                  leading:Icon(Icons.history)

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
        );

  }
}
