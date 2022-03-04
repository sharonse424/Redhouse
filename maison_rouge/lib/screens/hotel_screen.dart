import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 40.0),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 149, 13, 13),
                  image: DecorationImage(
                    image: AssetImage('assets/img.jpeg'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenue à',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Maison Rouge\nCotonou',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
