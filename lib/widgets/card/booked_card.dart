import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/reseved_resort_model.dart';
import 'package:travel_in/screens/details_screen/booking_details_screen.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class BookedCard extends StatelessWidget {
  const BookedCard({super.key, required this.resevedResorsModel});
  final ResevedResorsModel resevedResorsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BookingDetailsScreen()));
      },
      child: Padding(
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
                  child: Image.network(
                    "https://lizard-well-boar.ngrok-free.app/storage/${resevedResorsModel.imageUrl}",
                    height: getSize(context).height * 0.16,
                    width: getSize(context).height * 0.14,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resevedResorsModel.resort,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextWithIcon(
                    text: resevedResorsModel.resortLocation,
                    icon: Icon(Icons.location_on),
                  ),
                  TextWithIcon(
                    text: resevedResorsModel.startDate
                        .toString()
                        .substring(0, 10),
                    icon: Icon(Icons.calendar_today),
                  ),
                  TextWithIcon(
                    text: resevedResorsModel.resevationStatus == "pending"
                        ? "حجز غير مؤكد"
                        : "حجز مؤكد",
                    icon: resevedResorsModel.resevationStatus == "pending"
                        ? Icon(Icons.pending_actions)
                        : Icon(Icons.done),
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
      ),
    );
  }
}
