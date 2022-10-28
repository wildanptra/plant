import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/screens/details/components/description_modal.dart';
import 'package:plant/screens/home/components/body.dart';
import 'package:plant/screens/home/components/notification_modal.dart';
import 'package:plant/screens/profile/profile_screen.dart';
import 'package:plant/screens/wishlist/wishlist_screen.dart';

import 'package:plant/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    AppBar header(){
      return AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/notification.svg",
            width: 20,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context){
                return const NotificationModal();
              }
            );
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/icon_cart.png',
              width: 20,
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      );  
    }

    return Scaffold(
      appBar: header(),
      body: const Body(),
    );
  }
}