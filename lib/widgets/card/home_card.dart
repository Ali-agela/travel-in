import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
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
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Icon(Icons.star, color: Colors.yellow, size: 15),
                    Spacer(),
                    Text(
                      "بنغازي",
                      style: GoogleFonts.cairo(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    Image.asset(
                      "assets/icons/loaction.png",
                      width: 15,
                      height: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/pics/1.png"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
