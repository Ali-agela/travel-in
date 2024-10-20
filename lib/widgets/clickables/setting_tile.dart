import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';


class SettingTile extends StatelessWidget {
  const SettingTile(
      {super.key,
      required this.text,
      required this.onTab,
      required this.asset,
      this.withDivider = true});
  final String text;
  final Function onTab;
  final String asset;
  final bool withDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTab();
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: white),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Row(
                children: [
                 Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Image.asset(
              asset,
              width: 24,
              height: 24,
            ),
          ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color:  Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
        if (withDivider)
           Divider(
            thickness:2 ,
            endIndent: 4,
            indent: 4,
            color: dividercolor.withOpacity(0.5),
          ),
      ],
    );
  }
}
