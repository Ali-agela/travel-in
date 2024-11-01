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
  final List<String> imagePaths1 = [
    'assets/explore/1.png',
    'assets/explore/2.png',
   'assets/explore/3.png',
  ];

  final List<String> imagePaths2 = [
    'assets/explore/1.png',
    'assets/explore/2.png',
   'assets/explore/3.png',
  ];



  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    List<Widget> reel = [];

    final List<ImageProvider> imageProviders1 = imagePaths1.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders2 = imagePaths1.map(_getImageProvider).toList();

    reel.add(ExploreImageSlider(
      images: imageProviders1,
      title: "المغامرة تنتظرك",
      description: 
                              " حينما يصبح المشهد كاملاً من الجبال العملاقة، اعلم أنك داخل أودية اكاكوس الساحرة ... معلم الخريطة، والمعروفة باللغة التارقية بـ “اينلجي”، هي أحد أشهر معالم أكاكوس وأكثرها تميزاً . يأخذ هذا المعلم شكلاً يشبه قارة إفريقيا، ليصبح رمزًا يجمع بين الجغرافيا والتراث الثقافي العريق للطوارق. " ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders2,
      title: "المغامرة تنتظرك",
      description: 
                              " حينما يصبح المشهد كاملاً من الجبال العملاقة، اعلم أنك داخل أودية اكاكوس الساحرة ... معلم الخريطة، والمعروفة باللغة التارقية بـ “اينلجي”، هي أحد أشهر معالم أكاكوس وأكثرها تميزاً . يأخذ هذا المعلم شكلاً يشبه قارة إفريقيا، ليصبح رمزًا يجمع بين الجغرافيا والتراث الثقافي العريق للطوارق. " ,
    ));


    return Container(
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
                  onTap: () {},
                  child: CustomBackButtonwithOpacity(isMain: true,),
                ),
              ],
            ),
          ),
        ]),
      
    );
  }

  ImageProvider _getImageProvider(String imagePath) {
    if (imagePath.startsWith('assets/')) {
      return AssetImage(imagePath);
    } else {
      return NetworkImage(imagePath);
    }
  }
}