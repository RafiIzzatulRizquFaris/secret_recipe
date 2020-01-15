import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  DetailScreen({Key key, this.item, this.item2, this.item3}) : super(key: key);
  final String item;
  final String item2;
  final String item3;
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Card(
                  color: Colors.black,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Hero(
                      tag: item,
                      child: Image.asset(item2)
//                      FadeInImage.assetNetwork(placeholder: item2, image: item2)
                  ),
                  margin: EdgeInsets.only(right: 20.0, left: 20.0),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                padding: EdgeInsets.all(5),
                child: Text(
                    item,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Instructions :",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.all(0),
                        color: Colors.black,
                        padding: EdgeInsets.all(5.0),
                        child: Card(
                          color: Colors.white30,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              item3,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}