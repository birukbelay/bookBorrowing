import 'package:flutter/material.dart';

import 'package:flutter_proj_n/home.dart';
import 'package:flutter_proj_n/components/books.dart';

class BookDetails extends StatefulWidget {
  final book_detail_name;
  final book_detail_picture;
  final book_detail_old_price;
  final book_detail_price;

  BookDetails({
    this.book_detail_name,
    this.book_detail_picture,
    this.book_detail_old_price,
    this.book_detail_price,
  });

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
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
              child: Center(child: Text('myApp'))),
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
                onPressed: () {}),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              child: GridTile(
                  child: Container(
                    color: Colors.white70,
                    child: Image.asset(widget.book_detail_picture),
                  ),
                  footer: new Container(
                    color: Colors.white54,
                    child: ListTile(
                      leading: new Text(
                        widget.book_detail_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text(
                            "${widget.book_detail_old_price}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          )),
                          Expanded(
                            child: new Text(
                              "${widget.book_detail_price}",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),

//            ================ first row =================
            Row(
              children: <Widget>[
//                ========= gener -=============

                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                                title: new Text("size"),
                                content: new Text("choose teh size"),
                                actions: <Widget>[
                                  new MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: new Text("close"),
                                  )
                                ]);
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("gener")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),

//                =============== Pages ===========

                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                                title: new Text("size"),
                                content: new Text("choose teh size"),
                                actions: <Widget>[
                                  new MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: new Text("close"),
                                  )
                                ]);
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("pages")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),

//                ==========  author ===========

                Expanded(
                  child: MaterialButton(
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                                title: new Text("size"),
                                content: new Text("choose teh size"),
                                actions: <Widget>[
                                  new MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(context);
                                    },
                                    child: new Text("close"),
                                  )
                                ]);
                          });
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("author")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                )
              ],
            ),

//            =============second row==============

            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text("get it now")),
                ),
                new IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red),
                  onPressed: () {},
                ),
              ],
            ),

            Divider(),
            new ListTile(
              title: new Text("Book details"),
              subtitle: new Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,qui"),
            ),

            Divider(),

            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.5, 5, 5, 5),
                  child: new Text(
                    "Book shop",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5), child: new Text("shop x"))
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.5, 5, 5, 5),
                  child: new Text(
                    "condition",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5), child: new Text("new book"))
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.5, 5, 5, 5),
                  child: new Text(
                    "Book year",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5), child: new Text("1200"))
              ],
            ),

            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("similar products"),
            ),

//            ====similar products====
            Container(
              height: 340.0,
              child: SimilarProducts(),
            )
          ],
        ));
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var book_list = [
    {
      "name": "bible",
      "picture": "images/1.jpg",
      "old_price": 23,
      "price": 12,
    },
    {
      "name": "myles",
      "picture": "images/2.jpg",
      "old_price": 10,
      "price": 200,
    },
    {
      "name": "billy",
      "picture": "images/3.jpg",
      "old_price": 20,
      "price": 200,
    },
    {
      "name": "yoni",
      "picture": "images/4.jpg",
      "old_price": 50,
      "price": 20,
    },
    {
      "name": "yoni",
      "picture": "images/5.jpg",
      "old_price": 50,
      "price": 20,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: book_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Book(
            book_name: book_list[index]['name'],
            book_picture: book_list[index]['picture'],
            book_old_price: book_list[index]['old_price'],
            book_price: book_list[index]['price'],
          );
        });
  }
}
