import 'dart:math';

import 'package:flutter/material.dart';

class Pallet_gen extends StatefulWidget {
  const Pallet_gen({Key? key}) : super(key: key);

  @override
  State<Pallet_gen> createState() => _Pallet_genState();
}

class _Pallet_genState extends State<Pallet_gen> {
  List myColor = [
    Colors.amber,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.red,
    Colors.lightBlue,
    Colors.deepPurple,
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.pink,
    Colors.lightBlueAccent,
    Colors.amber,
  ];

  int c1 = 0, c2 = 1, c3 = 2, c4 = 3, c5 = 5, c6 = 7;

  Widget Pallet(Color c1) {
    return Container(
      height: 40,
      width: double.infinity,
      color: c1,
    );
  }

  Widget MyContainer({required Color name}) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 150,
      color: name,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Color Palette\n",
                      style: TextStyle(fontSize: 25, color: Color(0xff3BB3F9))),
                  TextSpan(
                      text: "Generator",
                      style: TextStyle(fontSize: 25, color: Color(0xff3BB3F9))),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 350,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.teal,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pallet(myColor[c1]),
                  Pallet(myColor[c2]),
                  Pallet(myColor[c3]),
                  Pallet(myColor[c4]),
                  Pallet(myColor[c5]),
                  Pallet(myColor[c6]),

                ],
              ),
            ),
            const SizedBox(
              height: 68,
            ),
            GestureDetector(
              onTap: () {
                Random rndColor1 = Random();
                Random rndColor2 = Random();
                Random rndColor3 = Random();
                Random rndColor4 = Random();
                Random rndColor5 = Random();
                Random rndColor6 = Random();

                setState(() {
                  c1 = rndColor1.nextInt(11);
                  c2 = rndColor2.nextInt(11);
                  c3 = rndColor3.nextInt(11);
                  c4 = rndColor4.nextInt(11);
                  c5 = rndColor5.nextInt(11);
                  c6 = rndColor6.nextInt(11);
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.lightBlue, width: 2),
                ),
                child: Text(
                  "Generate",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
