import 'package:flutter/material.dart';

class SwiperImage extends StatelessWidget {
  const SwiperImage({super.key, required this.index, required this.image});
  final int index;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
