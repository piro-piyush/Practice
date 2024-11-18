import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool checkedValue = false;

  void toggleCheckValue(bool? value) {
    setState(() {
      checkedValue = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checkedValue,
          onChanged: toggleCheckValue,
          checkColor: Colors.white, // Color of the checkmark
          activeColor: Colors.blue, // Background color when checked
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 14, color: Colors.black),
              children: [
                const TextSpan(text: "I’m agree to The "),
                TextSpan(
                  text: "Terms of Service ",
                  style: const TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigate to Terms of Service
                    },
                ),
                const TextSpan(text: "and "),
                TextSpan(
                  text: "Privacy Policy",
                  style: const TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigate to Privacy Policy
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
