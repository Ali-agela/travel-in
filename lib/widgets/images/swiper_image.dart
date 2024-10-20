import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';

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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
