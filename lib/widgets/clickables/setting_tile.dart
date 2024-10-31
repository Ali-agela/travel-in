import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';


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
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                onTab();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: darkModeConsumer.isDark
                    ? darkcolor
                    : white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Row(
                    children: [
                     Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
                            color:  darkModeConsumer.isDark
                            ? whitegrey
                            : darktxtcolor),
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
    );
  }
}
