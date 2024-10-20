import 'package:flutter/cupertino.dart';
import 'package:travel_in/helper/size.dart';

class LongBlueDivider extends StatelessWidget {
  const LongBlueDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
                    child: Container(
                      width: getSize(context).width * 0.9,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFFD6D6D6),
                          ),
                        ),
                      ),
                    ),
                  );
  }
}