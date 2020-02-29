import 'package:flutter/material.dart';

class DrawerToggle extends StatefulWidget {
  @override
  _DrawerToggleState createState() => _DrawerToggleState();
}

class _DrawerToggleState extends State<DrawerToggle> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
