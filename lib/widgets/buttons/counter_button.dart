import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key, this.title = 'عدد الافراد'});
  final String title;

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.title),
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          icon: Icon(Icons.add_a_photo_rounded),
        ),
        Container(
            decoration: BoxDecoration(
              color: Color(0xff1D858F).withOpacity(0.8),
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            child: Text(
              counter.toString(),
              style: TextStyle(color: Colors.white),
            )),
        IconButton(
          onPressed: () {
            setState(() {
              if (counter > 0) {
                counter--;
              }
            });
          },
          icon: Icon(Icons.add_a_photo_rounded),
        ),
      ],
    );
  }
}
