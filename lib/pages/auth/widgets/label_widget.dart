import 'package:flutter/cupertino.dart';

Widget labelWidget(String text) {
  return Center(
    child: Text(
      text,
      textAlign: TextAlign.center, // Centers multi-line text
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF61677D),
      ),
    ),
  );
}

