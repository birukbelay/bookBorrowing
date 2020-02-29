import 'package:flutter/material.dart';

//my imports
import 'package:flutter_proj_n/home.dart';
import 'package:flutter_proj_n/components/borrowed_items.dart';

class Borrowed extends StatefulWidget {
  @override
  _BorrowedState createState() => _BorrowedState();
}


class _BorrowedState extends State<Borrowed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePages()));
            },
            child: Center(child: Text('borrowed'))),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new BorrowedItems(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text("\$200"),
            )),
            Expanded(
              child:new MaterialButton(onPressed: (){},
              child: new Text("checkout", style: TextStyle(color: Colors.white),),

                  color: Colors.red,),
            )
          ],
        ),
      ),

    );
  }
}
