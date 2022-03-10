import 'package:flutter/material.dart';
import 'package:maison_rouge/screens/bar_screen.dart';
import 'package:maison_rouge/screens/service_button.dart';

class HotelScreen extends StatefulWidget {
  HotelScreen({Key? key}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 40.0),
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    //color: Color.fromARGB(255, 149, 13, 13),
                    image: DecorationImage(
                      image: AssetImage('assets/img.jpeg'),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                      ServiceButton(
                          name: "Mini-Bar",
                          img: "assets/MiniBar.png",
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Barscreen(),
                              ),
                            );
                          }),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
