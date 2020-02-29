import 'package:flutter/material.dart';
import 'package:flutter_proj_n/pages/book_details.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}


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
  {
    "name": "yoni",
    "picture": "images/6.jpg",
    "old_price": 50,
    "price": 20,
  },
  {
    "name": "yoni",
    "picture": "images/7.jpg",
    "old_price": 50,
    "price": 20,
  },
  {
    "name": "yoni",
    "picture": "images/8.jpg",
    "old_price": 50,
    "price": 20,
  }, {
    "name": "yoni",
    "picture": "images/9.jpg",
    "old_price": 50,
    "price": 20,
  },

];

class _BooksState extends State<Books> {



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

class Single_Book extends StatelessWidget {
  final book_name;
  final book_picture;
  final book_old_price;
  final book_price;

  Single_Book({
    this.book_name,
    this.book_picture,
    this.book_old_price,
    this.book_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text(".."),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new BookDetails(
                        book_detail_name: book_name,
                        book_detail_picture: book_picture,
                        book_detail_old_price: book_old_price,
                        book_detail_price: book_price,
                      ))),
              child: GridTile(

                  footer: Container(
                    height: 60,
                    color: Colors.white60 ,
                    child: ListTile(
                      leading: Text(
                        book_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$book_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$book_old_price",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    book_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
