import 'package:flutter/material.dart';

class MiniBarItem extends StatelessWidget {
  final String name;
  final int cfaPrice;
  final double usPrice;

  MiniBarItem(
      {required this.name, required this.cfaPrice, required this.usPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045),
        ),
        Column(
          children: [
            Text(
              cfaPrice.toString() + " Franc CFA",
              style:
                  TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
            ),
            Text(
              "Soit " + usPrice.toString() + " €",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                  color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
