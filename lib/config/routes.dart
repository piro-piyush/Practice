import 'package:flutter/cupertino.dart';
import 'package:practice/pages/auth/screens/forget_password_screen.dart';
import 'package:practice/pages/auth/screens/otp_screen.dart';
import 'package:practice/pages/auth/screens/reset_password_screen.dart';
import 'package:practice/pages/auth/screens/sign_in_screen.dart';
import 'package:practice/pages/auth/screens/sign_up_screen.dart';

class Routes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case SignInScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SignInScreen());
      case SignUpScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SignUpScreen());
      case ForgetPasswordScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => const ForgetPasswordScreen());
      case OtpScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => const OtpScreen());
        case ResetPasswordScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => const ResetPasswordScreen());
      default:
        return null;
    }
  }
}
