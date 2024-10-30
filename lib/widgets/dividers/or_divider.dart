import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Text(
          AppLocalizations.of(context)!.orsignwith,
          textDirection: TextDirection.ltr,
          style: GoogleFonts.cairo(
            color: blue1,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}