import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinField extends StatefulWidget {
  const PinField({super.key});

  @override
  State<PinField> createState() => _PinFieldState();
}

class _PinFieldState extends State<PinField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: PinCodeTextField(
            appContext: context, 
            length: 6,
            cursorHeight: 16,
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              fieldWidth: 48,
              inactiveColor: Colors.grey,
              selectedColor: Colors.black,
              activeColor: Colors.grey,
              activeFillColor: Colors.grey,
              selectedFillColor: Colors.white,
              inactiveFillColor: Colors.white,
              borderWidth: 1.5,
              borderRadius: BorderRadius.circular(8),

            ),
            onChanged: ((value){
              //Validation! 
            }),
            ),
        )
      ],
    );
  }
}