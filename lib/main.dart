import 'package:collard_greens/features/connection/Sign_In_Page.dart';
import 'package:collard_greens/ui/colors/palette.dart';

import 'package:flutter/material.dart';

import 'features/CarInsurance/devis/devisForm.dart';

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
        primarySwatch: Palette.greenToDark,
        fontFamily: 'Inter',
      ),
      home: const SignInPage(),
    );
  }
}
