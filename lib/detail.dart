import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  DetailScreen({Key key, this.item, this.item2}) : super(key: key);
  final String item;
  final String item2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Detail : $item',
                style: TextStyle(
            color: Colors.white
        ),
        ),
        backgroundColor: Colors.black87,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          child: Image.asset(item2),
          margin: EdgeInsets.only(right: 20.0, left: 20.0),
        ),
      ),
    );
  }
}