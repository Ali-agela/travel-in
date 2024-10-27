import 'package:flutter/material.dart';

class SwiperImage extends StatelessWidget {
  const SwiperImage({
    super.key,
    required this.index,
    required this.image,
  });
  final int index;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          'https://lizard-well-boar.ngrok-free.app/storage/$image',
          fit: BoxFit.cover),
    );
  }
}
