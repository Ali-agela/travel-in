import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';

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
      Container(
        height: getSize(context).height,
        width: getSize(context).width,
        color: Colors.black,
      ),
      Container(
        height: getSize(context).height,
        width: getSize(context).width,
        color: Colors.green,

      ),
      Container(
        height: getSize(context).height,
        width: getSize(context).width,
        color: Colors.red,
      ),
    ];
    return Scaffold(
        body: Container(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: reel,
              controller: controller,
          
          ),
        ),

    );
  }
}
