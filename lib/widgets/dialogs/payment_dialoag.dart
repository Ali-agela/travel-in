import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';

class PaymentDialoag extends StatelessWidget {
  const PaymentDialoag({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        elevation: 15,
        shadowColor: Colors.black,
        insetPadding: EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: getSize(context).height * 0.5,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        "طريقة الدفع",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text("إجمالي قيمة الحجز هي : "),
              Center(
                child: Text("2400 د.ل"),
              ),
              Text("برجاء اختيار طريقة الدفع التي ترغب بها"),
              SizedBox(
                height: 20,
              ),
              BlueButton(onTap: () {}, buttonText: "الخدمات المصرفية "),
              SizedBox(
                height: 14,
              ),
              BlueButton(onTap: () {}, buttonText: "نقدا لدى مكتب الحجز"),
            ],
          ),
        ));
  }
}
