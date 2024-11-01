import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/models/ResortOfferModel.dart';
import 'package:travel_in/provider/favorite_provider.dart';

class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton({super.key, required this.offer});
  final ResortOfferModel offer;
  @override
  State<CustomLikeButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<CustomLikeButton> {
  bool? isLiked;
  @override
  initState() {
    isLiked = Provider.of<FavoriteProvider>(context, listen: false)
        .isFavorite(widget.offer);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLiked == null
        ? CircularProgressIndicator()
        : GestureDetector(
            onTap: () {
              if (isLiked!) {
                Provider.of<FavoriteProvider>(context, listen: false)
                    .removeFavorite(widget.offer);
                setState(() {
                  isLiked = false;
                });
              } else {
                Provider.of<FavoriteProvider>(context, listen: false)
                    .addFavorite(widget.offer);
                setState(() {
                  isLiked = true;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isLiked! ? Colors.red : Colors.black.withOpacity(0.15)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/icons/like_icon.png',
                  width: 32,
                  height: 32,
                ),
              ),
            ),
          );
  }
}
