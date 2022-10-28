import 'package:flutter/material.dart';
import 'package:plant/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.only(
        top: defaultPadding + 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF1F0F2),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/image_1.png'
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Angelica',
                    style: primaryDarkTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$143,98',
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Image.asset('assets/images/button_min.png',
                          width: 16,
                        )
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        '2',
                        style: primaryDarkTextStyle.copyWith(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Image.asset(
                          'assets/images/button_plus.png',
                          width: 16,
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
                icon: Image.asset(
                  'assets/images/icon_remove.png',
                  width: 14,
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}