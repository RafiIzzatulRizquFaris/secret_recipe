import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoHeroInet extends StatelessWidget{
  const PhotoHeroInet({Key key, this.tag, this.photo, this.onTap, this.width})
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
              child: Image.network(
                photo,
                fit: BoxFit.contain,
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress){
                  if(loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null ?
                      loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
                    ),
                  );
                },
              ),
            ),
          )
      ),
    );
  }
}