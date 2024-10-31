import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key, required this.options});
  final List<String> options;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? currentOption;

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.options.map((option) {
            return SizedBox(
              width: getSize(context).width*0.15,
              child: ListTileTheme(
                horizontalTitleGap: 4,
                child: RadioListTile<String>(title: Text(
                  option,
                  style: GoogleFonts.cairo(
                    color: darkModeConsumer.isDark
                    ? whitegrey
                    : darktxtcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                activeColor: bluegreen,
                  visualDensity: const VisualDensity(horizontal: -4.0),  
                  contentPadding: EdgeInsets.zero, 
                  dense: true,  
                  value: option,
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value;
                    });
                  },
                ),
                
              ),
            );
          }).toList(),
        );
      }
    );
  }
}