import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';

class ExploreImageSlider extends StatefulWidget {
  const ExploreImageSlider({
    super.key,
    required this.images,
    required this.title,
    required this.description,
    this.buttonText = 'اكتشف المزيد',
    this.onButtonPressed,
  });

  final List<ImageProvider> images;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onButtonPressed;

  @override
  State<ExploreImageSlider> createState() => _ExploreImageSliderState();
}

class _ExploreImageSliderState extends State<ExploreImageSlider> {
  int currentIndex = 0;
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(builder: (context, darkModeConsumer, _) {
      return SingleChildScrollView(
        child: Container(
          width: getSize(context).width,
          height: getSize(context).height * 0.92,
          child: Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  height: getSize(context).height,
                  aspectRatio: 19 / 6,
                  onPageChanged: (index, reason) =>
                      setState(() => currentIndex = index),
                ),
                items: widget.images
                    .map((imageProvider) =>
                        Image(image: imageProvider, fit: BoxFit.cover))
                    .toList(),
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Container(
                height: getSize(context).height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black87, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                bottom: getSize(context).height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: getSize(context).width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: GoogleFonts.cairo(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: white),
                        ),
                        Text(
                          widget.description,
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: whitegrey,
                          ),
                          maxLines: isShowMore ? 50 : 1,
                          textAlign: TextAlign.justify,
                        ),
                        GestureDetector(
                          onTap: () => setState(() => isShowMore = !isShowMore),
                          child: Text(
                            isShowMore ? ".. أقل" : ".. المزيد",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 24,
                  bottom: 24,
                  child: whiteButton(
                    onTap: () {},
                    buttonText: 'اكتشف المزيد',
                    width: 188,
                    color: Colors.transparent,
                  )),
            ],
          ),
        ),
      );
    });
  }
}
