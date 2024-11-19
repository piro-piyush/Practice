import 'package:flutter/material.dart';

Widget buildButton({required String text}) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
        color: const Color(0xFF3461FD),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
              color: Colors.black.withOpacity(0.25))
        ]),
    child: Center(
        child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    )),
  );
}
