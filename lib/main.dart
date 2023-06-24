import 'package:coffey/screens/productDescriptionPage.dart';
import 'package:flutter/material.dart';

import 'screens/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDescription(),
      // home: MainPage(),
    );
  }
}



