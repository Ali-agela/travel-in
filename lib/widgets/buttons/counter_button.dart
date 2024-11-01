import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  CounterButton({super.key, this.title = 'عدد الافراد', required this.counter, required this.onPressed_add,required this.onPressed_take });
  final String title;
  int counter ;
  final Function onPressed_add;
  final Function onPressed_take;  

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
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
            widget.onPressed_add();
           
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
             widget.counter.toString(),
              style: TextStyle(color: Colors.white),
            )),
        IconButton(
          onPressed: () {
              widget.onPressed_take();
          },
          icon: Icon(Icons.add_a_photo_rounded),
        ),
      ],
    );
  }
}
