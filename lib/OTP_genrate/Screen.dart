import 'dart:math';
import 'package:flutter/material.dart';

class OTP_genrate extends StatefulWidget {
  const OTP_genrate({Key? key}) : super(key: key);

  @override
  State<OTP_genrate> createState() => _OTP_genrateState();
}

class _OTP_genrateState extends State<OTP_genrate> {
  TextEditingController numberController = TextEditingController();
  String otp = "";

  List<int> number = [0, 10, 100, 1000, 10000, 100000, 1000000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Text(
              "OTP Generator",
              style: TextStyle(
                fontSize: 38,
                color: Color(0xffF6DB87),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: TextField(
              cursorColor: Color(0xffFCF6BA),
              controller: numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xffFCF6BA),
                  ),
                ),
                hintText: "Enter OTP Length",
                hintStyle: TextStyle(
                  color: Color(0xffFCF6BA).withOpacity(0.5),
                ),
              ),
              style: TextStyle(
                color: Color(0xffFCF6BA),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          InkWell(
            onTap: () {
              setState(
                () {
                  int otpLength = int.parse(numberController.text);
                  Random randomNumber = Random();
                  otp = randomNumber.nextInt(number[otpLength]).toString();
                },
              );
            },
            borderRadius: BorderRadius.circular(15),
            splashColor: Colors.white.withOpacity(0.3),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFE8B8),
                    Color(0xffF6DB87),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                child: Text(
                  "Generate OTP",
                  style: TextStyle(
                    color: Color(0xff15172B),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 80,
            width: 400,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFFE8B8),
            ),
            child: Text(
              "$otp",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff15172B),
                fontSize: 35,
                letterSpacing: 40,
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                numberController.clear();
                otp = "";
              });
            },
            borderRadius: BorderRadius.circular(15),
            splashColor: Colors.white.withOpacity(0.3),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFE8B8),
                    Color(0xffF6DB87),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Color(0xff15172B),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
