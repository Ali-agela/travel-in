import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class SliderRange extends StatefulWidget {
  const SliderRange({super.key});

  @override
  State<SliderRange> createState() => _SliderRangeState();
}

class _SliderRangeState extends State<SliderRange> {
  RangeValues values = RangeValues(100, 3000);
  RangeLabels labels = RangeLabels('100 د.ل', '3000 د.ل');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: RangeSlider(
          min: 100,
          max: 3000,
          divisions: 29, // Set divisions to 29 for increments of 100
          values: values,
          labels: labels,
          onChanged: (value) {
            setState(() {
              values = RangeValues(
                (value.start / 100).round() * 100.0,
                (value.end / 100).round() * 100.0,
              );
              labels = RangeLabels(
                '${values.start.toInt()} د.ل',
                '${values.end.toInt()} د.ل',
              );
            });
          },
          activeColor: bluegreen,
          inactiveColor: bluegreen.withOpacity(0.5),
        ),
      ),
    );
  }
}