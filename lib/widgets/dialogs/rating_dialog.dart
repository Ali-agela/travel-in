import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/rating/rating_stars.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/label.dart';

class RatingDialog extends StatefulWidget {
  const RatingDialog({super.key});

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
            elevation: 15,
      shadowColor: Colors.black,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
         height: getSize(context).height * 0.65,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Label(title: "تقييم تجربتك", subTitle: "نأمل منك مساعدتنا في تقييم الحجز السابق", fontSize: 16,),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTitle(title: 'الخدمات', fontSize: 16,),
                const RatingStars(),
            ],),
           
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTitle(title: 'الأسعار', fontSize: 16,),
                RatingStars(),
            ],),
            
            Row( 
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTitle(title: 'النظافة', fontSize: 16,),
                RatingStars(),
            ],),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                CustomTitle(title: 'الطعام', fontSize: 16,),
                RatingStars(),
            ],),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                CustomTitle(title: 'التقييم العام', fontSize: 16,),
                SizedBox(width: 13,),
                RatingStars(),
            ],),
            SizedBox(height: 16,),

            const CustomTitle(title: "شكرا لاختيارك Travel in", fontSize: 18,),
            SizedBox(height: 24,),
            BlueButton(onTap: (){}, buttonText: "إرسال", width: 280,),
            SizedBox(height: 16,),


          ],
        ),
      ),
    );
  }
}
