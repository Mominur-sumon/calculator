// ignore_for_file: prefer_const_constructors, deprecated_member_use, duplicate_ignore, prefer_const_literals_to_create_immutables, sort_child_properties_last


import 'package:flutter/material.dart';

// ignore: camel_case_types
class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

// ignore: camel_case_types
class _calculatorState extends State<calculator> {
  Widget numButton(String btnText, Color btnColor, Color textColor) {
    return ElevatedButton(
        onPressed: () => {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          shape: CircleBorder(),
          primary: btnColor,
        ),
        child: Text(
          btnText,
          style: TextStyle(fontSize: 25, color: textColor),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 5),
        // ignore: prefer_const_constructors
        child: Column(
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("C", Colors.grey, Colors.black),
                numButton("+/-", Colors.grey, Colors.black),
                numButton("%", Colors.grey, Colors.black),
                numButton("/", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("7", Colors.grey, Colors.white),
                numButton("8", Colors.grey, Colors.white),
                numButton("9", Colors.grey, Colors.white),
                numButton("x", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("4", Colors.grey, Colors.white),
                numButton("5", Colors.grey, Colors.white),
                numButton("6", Colors.grey, Colors.white),
                numButton("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("1", Colors.grey, Colors.white),
                numButton("2", Colors.grey, Colors.white),
                numButton("3", Colors.grey, Colors.white),
                numButton("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                   child: Padding(padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                   child: Text(
                    "0",
                    style:TextStyle(
                      fontSize: 35,
                      color: Colors.white ,
                    ),
                   ),
                   ),
                   style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: (Colors.grey),
                   ) ,
                  ),
                  numButton(".", Colors.grey, Colors.white),
                  numButton("=", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
