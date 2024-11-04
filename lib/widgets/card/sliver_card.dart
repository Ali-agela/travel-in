import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/ResortOfferModel.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/back_button_opacity.dart';
import 'package:travel_in/widgets/buttons/like_button.dart';
import 'package:travel_in/widgets/images/swiper_image.dart';
import 'package:travel_in/models/ResortModel.dart' as resort_model;

class SliverCard extends StatelessWidget {
  const SliverCard(
      {super.key, this.children = const [SizedBox()], required this.images, this.offer});
  final List<Widget> children;
  final List<resort_model.Image> images;
  final ResortOfferModel? offer;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: getSize(context).height * 0.7,
      foregroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      // shadowColor: Colors.white,
      surfaceTintColor: Colors.transparent,

      collapsedHeight: getSize(context).height * 0.25,

      pinned: true, // This makes the app bar stick
      flexibleSpace: FlexibleSpaceBar(
          background: Stack(
        children: [
          // Positioned.fill(
          //   child: SwiperImage(
          //     index: 1,
          //     image: "assets/pics/1.png",
          //   ),
          // ),
          Swiper.children(
              pagination: const SwiperPagination(
                alignment: Alignment(0, 0.97),
                builder: DotSwiperPaginationBuilder(
                  color: Color(0xFF1C496B),
                  activeColor: yellow1,
                  size: 8.0,
                  activeSize: 10.0,
                ),
              ),
              itemHeight: getSize(context).height * 0.8,
              autoplay: true,
              loop: true,
              autoplayDelay: 7000,
              children: [
                ...List<SwiperImage>.from(images.map((e) => SwiperImage(
                      index: images.indexOf(e),
                      image: e.imageUrl,
                    ))),
              ]),
          ...children,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {}, child: CustomBackButtonwithOpacity()),
                
                offer==null? SizedBox() : GestureDetector(onTap: () {}, child: CustomLikeButton(
                      offer: offer!,
                )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
