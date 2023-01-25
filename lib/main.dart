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
        /* textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ) */
      ),
      home: SignInPage(),
    );
  }
}
