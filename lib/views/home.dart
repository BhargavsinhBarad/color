import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

bool red = false;
bool green = false;
bool blue = false;
bool amber = false;
Color backcolor = Colors.white;

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor.withOpacity(0.5),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (red == false) {
                    backcolor = Colors.red;
                    red = true;
                  } else if (red == true) {
                    red = false;
                  }
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: (red == true)
                      ? Border.all(width: 3)
                      : Border.all(width: 0),
                  color: Colors.red,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (green == false) {
                    backcolor = Colors.green;
                    green = true;
                  } else if (green == true) {
                    green = false;
                  }
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: (green == true)
                      ? Border.all(width: 3)
                      : Border.all(width: 0),
                  color: Colors.green,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (amber == false) {
                    backcolor = Colors.amber;
                    amber = true;
                  } else if (amber == true) {
                    amber = false;
                  }
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: (amber == true)
                      ? Border.all(width: 3)
                      : Border.all(width: 0),
                  color: Colors.amber,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (blue == false) {
                    backcolor = Colors.blue;
                    blue = true;
                  } else if (blue == true) {
                    blue = false;
                  }
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: (blue == true)
                      ? Border.all(width: 3)
                      : Border.all(width: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
