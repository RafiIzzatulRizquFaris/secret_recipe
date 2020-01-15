import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget{
  const PhotoHero({Key key, this.tag, this.photo, this.onTap, this.width})
      : super(key: key);

  final String tag, photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width,
      child: Hero(
          tag: tag,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Image.asset(
                  photo,
                  fit: BoxFit.contain,
              ),
            ),
          )
      ),
    );
  }
}