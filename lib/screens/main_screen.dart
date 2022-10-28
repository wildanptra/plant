import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/screens/home/home_screen.dart';
import 'package:plant/screens/profile/profile_screen.dart';
import 'package:plant/screens/wishlist/wishlist_screen.dart';

import 'package:plant/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget bottomNav(){
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 25,
              color: primaryColor.withOpacity(0.25)
            )
          ]
        ),
        child: BottomAppBar(
          child: BottomNavigationBar(
            backgroundColor: backgroundColor,
            onTap: (value){
              // ignore: avoid_print
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  child: SvgPicture.asset(
                    currentIndex == 0 ? 'assets/icons/flower-active.svg' : 'assets/icons/flower.svg',
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  child: SvgPicture.asset(
                    currentIndex == 1 ? 'assets/icons/heart-active.svg' : 'assets/icons/heart-icon.svg',
                    width: 20,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 5,
                  ),
                  child: SvgPicture.asset(
                    currentIndex == 2 ? 'assets/icons/user-active.svg' : 'assets/icons/user-icon.svg',
                    width: 20,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget switchPage(){
      switch (currentIndex) {
        case 0:
            return const HomeScreen();
        case 1: 
            return const WishlistScreen();
        case 2:
            return const ProfileScreen();
        default:
            return const HomeScreen();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: switchPage(),
      bottomNavigationBar: bottomNav(),
    );
  }

}