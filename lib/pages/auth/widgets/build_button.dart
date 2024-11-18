import 'package:flutter/material.dart';

Widget buildButton({required String text}) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
        color: const Color(0xFF3461FD),
        borderRadius: BorderRadius.circular(14),
    ),
    child: Center(
        child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    )),
  );
}
