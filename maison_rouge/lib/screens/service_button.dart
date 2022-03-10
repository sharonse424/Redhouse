import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String name;
  final String img;
  final Function onClick;

  ServiceButton({required this.name, required this.img, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.width / 4,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 2,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage(img),
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.width / 8,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 80,
            ),
            Text(
              name,
              style: TextStyle(
                  color: const Color.fromARGB(255, 167, 19, 8),
                  fontSize: MediaQuery.of(context).size.width * 0.03),
            ),
          ]),
        ),
      ),
      onTap: () {
        onClick();
      },
    );
  }
}
