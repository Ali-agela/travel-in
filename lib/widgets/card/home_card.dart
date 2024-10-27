import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/models/ResortModel.dart' as resort_model;
import 'package:travel_in/screens/details_screen/resort_detail_screen.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, this.isResort = true,  required this.resort});
  final bool isResort;
  final resort_model.ResortModel resort;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,CupertinoPageRoute(builder: (builder)=>ResortDetailScreen(resort: resort,)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          boxShadow:const  [
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
                      resort.name,
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
                    image: NetworkImage("https://lizard-well-boar.ngrok-free.app/storage/${resort.images.first.imageUrl}"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
