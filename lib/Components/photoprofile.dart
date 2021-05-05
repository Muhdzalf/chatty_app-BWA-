import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  final String imageUrl;
  final double size;
  const PhotoProfile({
    Key key,
    this.imageUrl,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
          shape: BoxShape.circle),
    );
  }
}
