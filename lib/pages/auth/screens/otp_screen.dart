import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/auth/screens/reset_password_screen.dart';
import 'package:practice/pages/auth/widgets/build_button.dart';
import 'package:practice/pages/auth/widgets/build_pin_put.dart';
import 'package:practice/pages/auth/widgets/heading_widget.dart';
import 'package:practice/pages/auth/widgets/label_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  static const routeName = "otpScreen";

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: headingWidget("Enter OTP")),
            const SizedBox(
              height: 15,
            ),
            labelWidget(
                "Enter the OTP code we just sent you on your registered Email/Phone number"),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            buildPinPut(),
            const SizedBox(
              height: 35,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ResetPasswordScreen.routeName);
                },
                child: buildButton(text: "Reset Password")),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black),
                          children: [
                        const TextSpan(text: "Didn't get OTP? "),
                        TextSpan(
                          text: "Resend OTP",
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ])),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
