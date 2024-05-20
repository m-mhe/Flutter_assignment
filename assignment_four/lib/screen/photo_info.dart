import 'package:flutter/material.dart';

class PhotoInfo extends StatelessWidget {
  const PhotoInfo(
      {super.key,
      required this.iD,
      required this.imageUrl,
      required this.imageTitle});

  final int iD;
  final String imageUrl;
  final String imageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Info'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_image(context), _imageName(context), _albumName()],
      ),
    );
  }

  //------------------------------------------------------------------Widgets------------------------------------------------------------------
  Text _albumName() => Text(
        "Album No. $iD",
        style:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      );

  Padding _imageName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 9.8),
      child: Text(
        imageTitle.toUpperCase(),
        textAlign: TextAlign.center,
        style:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }

  Padding _image(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 9.8),
      child: Image.network(imageUrl),
    );
  }
}
