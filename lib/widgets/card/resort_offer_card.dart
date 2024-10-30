import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/ResortOfferModel.dart' as offerModel;
import 'package:travel_in/screens/details_screen/offer_detail_screen.dart';
import 'package:travel_in/widgets/rating/ratings.dart';

class ResortOfferCard extends StatelessWidget {
  const ResortOfferCard({
    super.key,
    required this.resortOfferModel,
  });
  final offerModel.ResortOfferModel resortOfferModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => OfferDetailScreen(
                      offer: resortOfferModel,
                    )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://lizard-well-boar.ngrok-free.app/storage/${resortOfferModel.images.first.imageUrl}',
                      width: getSize(context).width * 0.23,
                    )),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          resortOfferModel.name,  
                          style: TextStyle(
                            color: Color(0xFF1B1E28),
                            fontSize: 14,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                            height: 0.08,
                            letterSpacing: 0.50,
                          ),
                        ),
                        SizedBox(height: 5),
                        Ratings(rate: 5),
                        Text(resortOfferModel.numberOfPoeple),
                        Text("${resortOfferModel.pricePerRoom} د.ل/اليوم"),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Center(child: Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
