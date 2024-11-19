import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/auth/screens/sign_in_screen.dart';
import 'package:practice/pages/auth/widgets/build_button.dart';
import 'package:practice/pages/auth/widgets/build_logo_container_widget.dart';
import 'package:practice/pages/auth/widgets/build_text_field_widget.dart';
import 'package:practice/pages/auth/widgets/heading_widget.dart';
import 'package:practice/pages/auth/widgets/label_widget.dart';
import 'package:practice/pages/auth/widgets/terms_and_conditions_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const routeName = "signUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(child: headingWidget("Sign Up")),
              const SizedBox(
                height: 15,
              ),
              labelWidget("Create your account and start your journey with us today!"),
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
                    hintText: "Name",
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
              const SizedBox(
                height: 10,
              ),
              const TermsAndConditionsWidget(),
              const SizedBox(
                height: 10,
              ),
              buildButton(text: "Create Account"),
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
                          const TextSpan(text: "Do you have account? "),
                          TextSpan(
                            text: "Sign In",
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, SignInScreen.routeName);
                              },
                          ),
                        ])),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
