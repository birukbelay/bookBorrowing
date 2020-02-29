import 'package:flutter/material.dart';

class BorrowedItems extends StatefulWidget {
  @override
  _BorrowedItemsState createState() => _BorrowedItemsState();
}

class _BorrowedItemsState extends State<BorrowedItems> {
  var book_list = [
    {
      "name": "bible",
      "picture": "images/1.jpg",
      "old_price": 23,
      "price": 12,
      "page": "300",
      "daysLeft": "2",
      "year": "1998"
    },
    {
      "name": "myles",
      "picture": "images/2.jpg",
      "old_price": 10,
      "price": 200,
      "page": "300",
      "daysLeft": "2",
      "year": "1998"
    },
    {
      "name": "billy",
      "picture": "images/3.jpg",
      "old_price": 20,
      "price": 200,
      "page": "300",
      "daysLeft": "2",
      "year": "1998"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return SingleBorrowedBook(
            book_name: book_list[index]["name"],
            book_picture: book_list[index]["picture"],
            book_old_price: book_list[index]["old_price"],
            book_price: book_list[index]["price"],
            page: book_list[index]["page"],
            daysLeft: book_list[index]["daysLeft"],
            year: book_list[index]["year"],
          );
        });
  }
}

class SingleBorrowedBook extends StatelessWidget {
  final book_name;
  final book_picture;
  final book_old_price;
  final book_price;
  final page;
  final daysLeft;
  final year;

  SingleBorrowedBook({
    this.book_name,
    this.book_picture,
    this.book_old_price,
    this.book_price,
    this.page,
    this.daysLeft,
    this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//        =======leading section ===
        leading: new Image.asset(
          book_picture,
          width: 70,
          height: 120,
        ),

//===========title section=====
        title: new Text(book_name),

        subtitle: new Column(
          children: <Widget>[
//            ROWS INSIDE THE COLMUN
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: new Text("page"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: new Text(
                    page,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                new Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 4, 8),
                  child: new Text("color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    year,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
//              new Padding(
//                padding: const EdgeInsets.fromLTRB(20,8,8,8),
//                child: new Text("days Left:"),
//              ),
//              Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: new Text(
//                  daysLeft,
//                  style:TextStyle(color: Colors.red),
//
//                ),
//              )
              ],
            ),

//            ===========product price section==========

            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${book_price}",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),


        trailing: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
              new Text("1"),
//        new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
            ],
          ),

      ),
    );
  }
}
