import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';

class Checkboxes extends StatefulWidget {
  const Checkboxes({
    super.key, required this.subtitle,
  });
  final String subtitle;

  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return  Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getSize(context).width*0.1,
                width: getSize(context).width*0.5,
                child: CheckboxListTile(
                  title: Text(
                      widget.subtitle,
              style: GoogleFonts.cairo(
                                             color: darkModeConsumer.isDark 
                                ? whitegrey
                                : darktxtcolor,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: bluegreen,
                  checkColor: white,
                  tristate: true,
                    value: ischecked,
                    onChanged: (value) {
                      setState(() {
                      ischecked = value ?? false; 
                      });
                    }),
              ),
            ],
          );
      }
    );
  }
}
