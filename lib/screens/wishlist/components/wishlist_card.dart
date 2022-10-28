import 'package:flutter/material.dart';

import 'package:plant/theme.dart';

class WishlistCard extends StatelessWidget {

  final String image,name;
  final double price; 

  const WishlistCard({
    super.key,
    required this.image,
    required this.name,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: defaultPadding,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffE5E5E5),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: primaryDarkTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                Text(
                  '\$$price',
                  style: primaryTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset(
              'assets/images/wishlist_active.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}