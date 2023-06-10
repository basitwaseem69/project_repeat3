import 'package:flutter/material.dart';

class Practise extends StatefulWidget {
  const Practise({super.key});

  @override
  State<Practise> createState() => _PractiseState();
}

class _PractiseState extends State<Practise> {
  List colorBox = [
    Colors.pinkAccent,
    Colors.grey,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.lightGreen,
    Colors.pinkAccent,
  ];

  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < colorBox.length; i++)
            InkWell(
              
              onTap: () {
                setState(() {
                  selectedIcon = i;
                });
              },
              child: Container(
                  height: 45,
                  width: 45,
                  child: selectedIcon == i
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 25,
                        )
                      : Container(),
                  decoration: BoxDecoration(
                    color: colorBox[i],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  ),
            ),
        ],
      ),
    );
  }
}
