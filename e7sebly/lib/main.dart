import 'package:flutter/material.dart';

import 'Pages/MainPage.dart';
import 'Pages/azkar/azkar.dart';
import 'Pages/bmi/Bmi.dart';
import 'Pages/bmi/bmiScreen.dart';
import 'Pages/calculator/Calculator.dart';
import 'Pages/gpa/Gpa.dart';
import 'Pages/qrcode/QrCode.dart';
import 'SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp
      (
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      routes: {
          "azkar":(context)=>  const Azkarpage(),
          "bmi":(context)=>  const BmiScreen(),
          "calc":(context)=>  Calculator(),
          "gpa":(context)=>  const gpa(),
          "qrcode":(context)=>  const qrcode(),
          "main":(context)=>  const home(),
      },

    );
  }
}
