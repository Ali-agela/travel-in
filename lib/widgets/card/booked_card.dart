import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class BookedCard extends StatelessWidget {
  const BookedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(left: 19, right: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
              )
            ]),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/pics/resort1.png",
                  height: getSize(context).height * 0.16,
                  width: getSize(context).height * 0.14,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 5,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("النخلة الذهبية - فيلا"),
                TextWithIcon(
                  text: 'بنغازي',
                  icon: 'assets/icons/loaction.png',
                ),
                TextWithIcon(
                  text: 'بنغازي',
                  icon: 'assets/icons/loaction.png',
                ),
                TextWithIcon(
                  text: 'بنغازي',
                  icon: 'assets/icons/loaction.png',
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}