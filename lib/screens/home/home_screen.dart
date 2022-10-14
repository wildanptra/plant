import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/components/bottom_navbar.dart';
import 'package:plant/screens/home/components/body.dart';

import 'package:plant/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget cartButton(){
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/images/icon_cart.png',
          width: 20,
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: const Body(),
      floatingActionButton: cartButton(),
      bottomNavigationBar: const BottomNavbar(),
    );
  }

  AppBar header(){
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );  
  }
}