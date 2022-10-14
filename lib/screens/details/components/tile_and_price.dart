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
                  text:  "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: textColor, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:  country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: primaryColor,
            ),
          )
        ],
      ),
    );
  }
}