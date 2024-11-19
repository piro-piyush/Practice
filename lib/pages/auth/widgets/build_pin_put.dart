import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

Widget buildPinPut() {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.withOpacity(0.5)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  return Pinput(
    length: 6,
      keyboardType: TextInputType.number,
      defaultPinTheme: defaultPinTheme,
    onCompleted: (pin) => print(pin),
  );
}