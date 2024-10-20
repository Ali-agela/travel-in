import 'package:flutter/cupertino.dart';
import 'package:travel_in/helper/size.dart';

class ScrollDivider extends StatelessWidget {
  const ScrollDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                heightFactor: 6,
                child: Container(
                  width: getSize(context).width * (40 / 400),
                  height: 5,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD6D6D6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              );
  }
}