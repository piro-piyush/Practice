import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:practice/config/routes.dart';
import 'package:practice/pages/auth/screens/sign_in_screen.dart';
import 'package:practice/pages/auth/screens/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      onGenerateRoute: Routes.onGenerateRoutes,
      initialRoute: SignInScreen.routeName,
    );
  }
}
