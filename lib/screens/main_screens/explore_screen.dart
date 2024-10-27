import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/back_button_opacity.dart';
import 'package:travel_in/widgets/images/explore_image_scroller.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    List<Widget> reel = [
      ExploreImageScroller(),
      ExploreImageScroller(),
      ExploreImageScroller(),
    ];
    return Scaffold(
      body: Container(
        child: Stack(children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: reel,
            controller: controller,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {}, child: CustomBackButtonwithOpacity()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
