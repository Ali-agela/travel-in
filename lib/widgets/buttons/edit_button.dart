import 'package:flutter/cupertino.dart';
import 'package:travel_in/helper/constant.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key, this.ontap});
  final Function? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap!();
      },
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: whitegrey),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/icons/edit_icon.png',
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}
