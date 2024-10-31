import 'package:flutter/material.dart';

class ImageListBuilder extends StatelessWidget {
  const ImageListBuilder({
    super.key,
    required this.imagePaths,
  });

  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        final String imagePath = imagePaths[index];
        return Image(
          image: _getImageProvider(imagePath),
          fit: BoxFit.cover, // Adjust as needed
        );
      },
    );
  }

  ImageProvider _getImageProvider(String imagePath) {
    if (imagePath.startsWith('assets/')) {
      return AssetImage(imagePath);
    } else {
      return NetworkImage(imagePath);
    }
  }
}