import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key, required this.rate});
  final int rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          rate <= 0 ? Icons.star_border_outlined : Icons.star_rounded,
          color: Colors.yellow,
        ),
        Icon(
          rate <= 1 ? Icons.star_border_outlined : Icons.star_rounded,
          color: Colors.yellow,
        ),
        Icon(
          rate <= 2 ? Icons.star_border_outlined : Icons.star_rounded,
          color: Colors.yellow,
        ),
        Icon(
          rate <= 3 ? Icons.star_border_outlined : Icons.star_rounded,
          color: Colors.yellow,
        ),
        Icon(
          rate <= 4 ? Icons.star_border_outlined : Icons.star_rounded,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
