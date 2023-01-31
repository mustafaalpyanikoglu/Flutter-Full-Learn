import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});
  final String _imagePath =
      'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 150,
              width: 150,
              child: PngImage(path: ImageItems().appleWithBookPath)),
          Container(height: 50),
          SizedBox(
            height: 150,
            width: 150,
            child: Image.network(
              errorBuilder: (context, error, stackTrace) =>
                  PngImage(path: ImageItems().appleWithBookPath),
              _imagePath,
            ),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/png/ekrangoruntusu.png";
  final String appleWith = "assets/png/2.png";

  final String appleWithBookPath = "ekrangoruntusu";
}

class PngImage extends StatelessWidget {
  const PngImage({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$path.png';
}
