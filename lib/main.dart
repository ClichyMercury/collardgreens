import 'package:collard_greens/AppRoot/history/history.dart';
import 'package:collard_greens/AppRoot/root.dart';
import 'package:collard_greens/features/connection/Sign_In_Page.dart';
import 'package:collard_greens/features/profile/userPage.dart';
import 'package:flutter/material.dart';

import 'AppRoot/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Inter',
      ),
      home: const SignInPage(),
    );
  }
}
