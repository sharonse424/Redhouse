import 'package:flutter/material.dart';
import 'package:maison_rouge/screens/bar_screen.dart';
import 'package:maison_rouge/screens/home_screen.dart';
import 'package:maison_rouge/screens/hotel_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //this widget is the root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maison Rouge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 240, 234, 234),
      ),
      home: HotelScreen(),
    );
  }
}
