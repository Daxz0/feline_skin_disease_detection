import 'package:flutter/material.dart';
import 'package:design_1/login.dart';
import 'package:design_1/home.dart';
import 'package:design_1/sign_up.dart';
import 'package:design_1/streak.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LoginScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/streak': (context) => StreakScreen(),
      },
    );
  }
}

