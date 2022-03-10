import 'package:flutter/material.dart';
import 'package:maison_rouge/screens/app_large_text.dart';
import 'package:maison_rouge/screens/mini_bar_item.dart';
import 'package:maison_rouge/screens/my_expansion_panel_list.dart';

class Barscreen extends StatefulWidget {
  Barscreen({Key? key}) : super(key: key);

  @override
  State<Barscreen> createState() => _BarscreenState();
}

class _BarscreenState extends State<Barscreen> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 253, 167, 161),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 12,
                        right: MediaQuery.of(context).size.width / 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          image: const AssetImage("assets/MiniBar.png"),
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.width / 4,
                        ),
                        AppLargeText(
                          text: "Mini Bar",
                          color: const Color.fromARGB(255, 167, 19, 8),
                          size: MediaQuery.of(context).size.width * 0.08,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Vous trouverez dans le mini-bar\ntoute une variété de boissons.",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image(
              image: const AssetImage("assets/drink.jpg"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: MyExpansionPanelList(
                //elevation: 1,
                animationDuration: const Duration(milliseconds: 2000),
                children: [
                  ExpansionPanel(
                    headerBuilder: (context, isExpanded) {
                      return const ListTile(
                        title: Text(
                          'TARIFS DU MINI-BAR',
                          style: TextStyle(
                              color: Color.fromARGB(255, 167, 19, 8),
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    body: Column(
                      children: [
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                        ListTile(
                          title: MiniBarItem(
                              name: "Béninoise", cfaPrice: 3500, usPrice: 5.50),
                        ),
                      ],
                    ),
                    isExpanded: _expanded,
                    canTapOnHeader: true,
                  ),
                ],
                //  dividerColor: Colors.grey,
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded = !_expanded;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
