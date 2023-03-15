import 'dart:async';

import 'package:easy_surprise/constant.dart';
import 'package:easy_surprise/screens/login_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 4), (timer) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const LoginScreen()),
        ),
      );
      timer.cancel();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRedColor,
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo_intro.png',
              width: 200,
              height: 250,
            ),
          ),

        ],
      ),
    );
  }
}
