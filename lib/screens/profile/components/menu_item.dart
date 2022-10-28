import 'package:flutter/material.dart';
import 'package:plant/theme.dart';

class MenuItems extends StatelessWidget {

  final String title;
  final void Function() press;

  const MenuItems({
    super.key,
    required this.title,
    required this.press
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: primaryTextStyle.copyWith(
                color: const Color(0xff999999),
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: const Color(0xff999999),
            ),
          ]
        ),
      ),
    );
  }
}