import 'package:flutter/material.dart';

import 'view/newspaper_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carousel Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewspaperScreen(),
    );
  }
}
