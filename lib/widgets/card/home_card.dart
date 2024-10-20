import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, this.isResort = true, required this.imageName});
  final bool isResort;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        boxShadow: [
          BoxShadow(
            color: Color(0x21000000),
            blurRadius: 4,
            offset: Offset(-5, 5),
            spreadRadius: 1,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19),
        child: GridTile(
          footer: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "منتجع النخلة الذهبية",
                    style: GoogleFonts.cairo(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
                  child: Row(
                    children: [
                      isResort
                          ? Image.asset(
                              "assets/icons/loaction.png",
                              width: 15,
                              height: 15,
                            )
                          : SizedBox(),
                      isResort
                          ? Text(
                              "بنغازي",
                              style: GoogleFonts.cairo(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            )
                          : SizedBox(),
                      Spacer(),
                      isResort
                          ? Icon(Icons.star, color: Colors.yellow, size: 15)
                          : SizedBox(),
                      isResort
                          ? Icon(Icons.star, color: Colors.yellow, size: 15)
                          : SizedBox(),
                      isResort
                          ? Icon(Icons.star, color: Colors.yellow, size: 15)
                          : SizedBox(),
                      isResort
                          ? Icon(Icons.star, color: Colors.yellow, size: 15)
                          : SizedBox(),
                      isResort
                          ? Icon(Icons.star, color: Colors.yellow, size: 15)
                          : SizedBox(),
                    ],
                  ),
                )
              ],
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pics/$imageName"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
