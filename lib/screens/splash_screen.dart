import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/login'),
    );

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 225,
          height: 225,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}