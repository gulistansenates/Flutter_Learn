import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final imageUrl = 'https://picsum.photos/300/300';
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl, height: 100, fit: BoxFit.cover);
  }
}
