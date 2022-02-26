import 'package:flutter/material.dart';
import 'package:saja/screen/Login_screen.dart';
import 'package:saja/screen/splash_screen.dart';
import 'package:saja/screen/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/LoginScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
      },
    );
  }
}
