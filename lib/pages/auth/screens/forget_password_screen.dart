import 'package:flutter/material.dart';
import 'package:practice/pages/auth/screens/otp_screen.dart';
import 'package:practice/pages/auth/widgets/build_button.dart';
import 'package:practice/pages/auth/widgets/build_text_field_widget.dart';
import 'package:practice/pages/auth/widgets/heading_widget.dart';
import 'package:practice/pages/auth/widgets/label_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  static const routeName = "forgetPasswordScreen";

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: headingWidget("Forget Password")),
            const SizedBox(
              height: 15,
            ),
            labelWidget("Don't worry! Enter your email to reset your password."),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BuildTextField(
              hintText: "Email/Phone Number",
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                },
                child: buildButton(text: "Continue")),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
