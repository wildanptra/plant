import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plant/theme.dart';

class IconCard extends StatelessWidget {

  final String icon;

  const IconCard({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(defaultPadding / 2),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: primaryColor.withOpacity(0.22)
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}