import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(  // this widget is responsible for the whole page
      home:new Container(
        color:Colors.white,
        child: new Text('hello'),
      )
    )
  );
}