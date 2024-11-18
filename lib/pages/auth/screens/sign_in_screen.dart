import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/auth/screens/sign_up_screen.dart';
import 'package:practice/pages/auth/widgets/build_button.dart';
import 'package:practice/pages/auth/widgets/build_logo_container_widget.dart';
import 'package:practice/pages/auth/widgets/build_text_field_widget.dart';
import 'package:practice/pages/auth/widgets/heading_widget.dart';
import 'package:practice/pages/auth/widgets/label_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const routeName = "signInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Sign In"),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: headingWidget("Sign In")),
            const SizedBox(
              height: 15,
            ),
            labelWidget("Welcome back!"),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildLogoContainerWidget(
                  text: "Facebook",
                  imageUrl: "assets/logo/fb.png",
                ),
                BuildLogoContainerWidget(
                  text: "Google",
                  imageUrl: "assets/logo/google.png",
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(thickness: 1, color: Color(0xFFE0E5EC)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Divider(thickness: 1, color: Color(0xFFE0E5EC)),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Column(
              children: [
                BuildTextField(
                  hintText: "Email/Phone Number",
                ),
                SizedBox(
                  height: 15,
                ),
                BuildTextField(
                  hintText: "Password",
                  obsecureText: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Forget Password? ",
                    style: TextStyle(color: Color(0xFF7C8BA0), fontSize: 14 ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            buildButton(text: "Log In"),
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
                        const TextSpan(text: "Don't have account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                             Navigator.pushNamed(context, SignUpScreen.routeName);
                            },
                        ),
                      ])),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
