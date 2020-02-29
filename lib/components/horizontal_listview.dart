import 'package:flutter/material.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

            Category(
              image_location: 'images/1.jpg',
              image_caption: 'book',
            ),

            Category(
              image_location: 'images/2.jpg',
              image_caption: 'book',
            ),

            Category(
              image_location: 'images/3.jpg',
              image_caption: 'book',
            ),

            Category(
              image_location: 'images/4.jpg',
              image_caption: 'book',
            ),

            Category(
              image_location: 'images/5.jpg',
              image_caption: 'book',
            ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;


  Category({this.image_location, this.image_caption});
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width:150.0,
              height:80,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          )
        )
      ),
    );
  }
}

