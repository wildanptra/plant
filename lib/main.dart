import 'package:flutter/material.dart';
import 'package:plant/screens/auth/login_screen.dart';
import 'package:plant/screens/auth/register_screen.dart';
import 'package:plant/screens/home/home_screen.dart';
import 'package:plant/screens/splash_screen.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/' : (context) => const SplashScreen(),
        '/home' : (context) => const HomeScreen(),
        '/login' : (context) => const LoginScreen(), 
        '/register' : (context) => const RegisterScreen(), 
      },
    );
  }
}
