import 'package:flutter/material.dart';
import 'package:practice/pages/auth/widgets/build_button.dart';
import 'package:practice/pages/auth/widgets/build_text_field_widget.dart';
import 'package:practice/pages/auth/widgets/heading_widget.dart';
import 'package:practice/pages/auth/widgets/label_widget.dart';
import 'package:practice/pages/home/home_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  static const routeName = "resetPasswordScreen";

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
            Center(child: headingWidget("Reset Password")),
            const SizedBox(
              height: 15,
            ),
            labelWidget("Set a new password to secure your account."),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 15,
            ),
            const BuildTextField(
              hintText: "New Password",
              obsecureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            const BuildTextField(
              hintText: "Confirm New Password",
              obsecureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName,(route) => false,);
                },
                child: buildButton(text: "Submit")),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
