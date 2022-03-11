import 'package:flutter/material.dart';
import 'package:saja/screen/Departments1_Screen.dart';
import 'package:saja/screen/Departments_Screen.dart';
import 'package:saja/screen/Forget_Password_Change_Password_Screen.dart';
import 'package:saja/screen/Forget_Password_Code_Phone_Screen.dart';
import 'package:saja/screen/Forget_Password_Screen.dart';
import 'package:saja/screen/Home_screen.dart';
import 'package:saja/screen/Login_screen.dart';
import 'package:saja/screen/Sing_Up_Screen.dart';
import 'package:saja/screen/splash_screen.dart';
import 'package:saja/screen/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/DepartmentsScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/SingUpScreen': (context) => const SingUpScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/ForgetPasswordScreen': (context) => const ForgetPasswordScreen(),
        '/ForgetPasswordCodePhoneScreen': (context) => const ForgetPasswordCodePhoneScreen(),
        '/ForgetPasswordChangePasswordScreen': (context) => const ForgetPasswordChangePasswordScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/DepartmentsScreen': (context) => const DepartmentsScreen(),
        '/Departments1Screen': (context) => const Departments1Screen(),
      },
    );
  }
}
