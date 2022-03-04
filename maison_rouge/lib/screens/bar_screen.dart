import 'package:flutter/material.dart';
import 'package:maison_rouge/screens/app_large_text.dart';

class Barscreen extends StatefulWidget {
  Barscreen({Key? key}) : super(key: key);

  @override
  State<Barscreen> createState() => _BarscreenState();
}

class _BarscreenState extends State<Barscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image(image: AssetImage("assets/MiniBar.png")),
                  AppLargeText(text: "Mini Bar")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
