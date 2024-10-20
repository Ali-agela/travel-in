import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/card/home_card.dart';

class ScrollViewH extends StatelessWidget {
  const ScrollViewH(
      {super.key,
      required this.images,
      this.isResort = true,
      required this.title});
  final List<String> images;
  final bool isResort;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          height: getSize(context).height * (170 / 852),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: SizedBox(
                      width: getSize(context).width * 0.4,
                      child: HomeCard(
                        imageName: images[index],
                        isResort: isResort,
                      )),
                );
              }),
        ),
      ],
    );
  }
}
