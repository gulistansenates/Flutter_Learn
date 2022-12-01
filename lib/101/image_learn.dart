import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 100,
          width: 300,
          child: PngImage(name: ImageItems().appleBookWithoutPath),
        ),
        Image.network(
          'https://cdn.pixabay.com/photo/2021/01/09/12/58/apple-5902283_960_720.png',
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple-5902283_960_720.png";
  final String appleBook = "assets/apple-5902283_960_720.png";
  final String appleBookWithoutPath = "assets/apple-5902283_960_720.png";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/$name.png';
}
