import 'package:flutter/cupertino.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';

class CenterAppTitle extends StatelessWidget {
  const CenterAppTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(child: CustomTitle(title: title, color: white,)),
      ),
    );
  }
}
