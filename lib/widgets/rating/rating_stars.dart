import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({super.key});
  @override
  State<RatingStars> createState() => _RatingStarsState();
}

class _RatingStarsState extends State<RatingStars> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              if (rating == 1) {
                setState(() {
                  rating = rating - 1;
                });
              } else {
                setState(() {
                  rating = 1;
                });
              }
            },
            icon: rating > 0
                ? Icon(Icons.star, color: yellow,)
                : Icon(Icons.star_border_outlined, color: Colors.black,)),
        IconButton(
            onPressed: () {
              if (rating == 2) {
                setState(() {
                  rating = rating - 1;
                });
              } else {
                setState(() {
                  rating = 2;
                });
              }
            },
            icon: rating > 1
                ? Icon(Icons.star, color: yellow,)
                : Icon(Icons.star_border_outlined, color: Colors.black,)),
        IconButton(
            onPressed: () {
              if (rating == 3) {
                setState(() {
                  rating = rating - 1;
                });
              } else {
                setState(() {
                  rating = 3;
                });
              }
            },
            icon: rating > 2
                ? Icon(Icons.star, color: yellow,)
                : Icon(Icons.star_border_outlined, color: Colors.black,)),
        IconButton(
            onPressed: () {
              if (rating == 4) {
                setState(() {
                  rating = rating - 1;
                });
              } else {
                setState(() {
                  rating = 4;
                });
              }
            },
            icon: rating > 3
                ? Icon(Icons.star, color: yellow,)
                : Icon(Icons.star_border_outlined, color: Colors.black,)),
        IconButton(
            onPressed: () {
              if (rating == 5) {
                setState(() {
                  rating = rating - 1;
                });
              } else {
                setState(() {
                  rating = 5;
                });
              }
            },
            icon: rating > 4
                ? Icon(Icons.star, color: yellow, )
                : Icon(Icons.star_border_outlined, color: Colors.black,)),
      ],
    );
  }
}
