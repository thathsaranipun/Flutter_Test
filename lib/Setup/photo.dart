import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("Photo"),),
      body: Container(
        height: 600.0,
        child: Text(
          // children: <Widget>[
           "ffff"
          // ],
        )
      ),
    );
  }

}