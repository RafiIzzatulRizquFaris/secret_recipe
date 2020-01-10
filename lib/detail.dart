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
        title: Text('Detail : $item'),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context, false)),
      ),
      body: Center(
        child: Image.asset(item2),
      ),
    );
  }
}