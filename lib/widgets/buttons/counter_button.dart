import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("عدد الافراد"),
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_a_photo_rounded),
        ),
        Container(
            decoration: BoxDecoration(
              color: Color(0xff1D858F).withOpacity(0.8),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Text(
              "2",
              style: TextStyle(color: Colors.white),
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_a_photo_rounded),
        ),
      ],
    );
  }
}