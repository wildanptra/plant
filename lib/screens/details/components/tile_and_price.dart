import 'package:flutter/material.dart';

import 'package:plant/theme.dart';

class TitleAndPrice extends StatelessWidget {

  final String title, country;
  final int price;

  const TitleAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: primaryDarkTextStyle.copyWith(
                    fontSize: 36,
                    color: textColor, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:  "$country\n",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: const Color(0xffA6A6A6),
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text :"\$$price",
                  style: primaryTextStyle.copyWith(
                    color: primaryColor,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: (){},
            child: Image.asset('assets/images/wishlist.png',
              width: 55
            ),
          )
        ],
      ),
    );
  }
}