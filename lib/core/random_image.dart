import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage(
      {super.key,
      this.imageUrl = "https://picsum.photos/200/300",
      this.height = 100});

  final String imageUrl;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
