import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:plant/theme.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: defaultPadding * 2,
        right: defaultPadding * 2, 
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: primaryColor.withOpacity(0.38)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: (){},
          ),
        ]
      ),
    );
  }
}