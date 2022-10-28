import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/screens/profile/components/menu_item.dart';

import 'package:plant/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    Widget header(){
      return Container(
        height: size.height * 0.2,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                bottom: defaultPadding,
              ),
              height: size.height * 0.2 - 25,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/user.svg',
                        width: 75,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wildan Pratama Putra',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'wildanptra@gmail.com',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding + 5
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: Text(
                  'User Settings',
                  style: primaryDarkTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3F3D56),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MenuItems(
                title: 'Edit Profile',
                press: (){},
              ),
              MenuItems(
                title: 'Order List',
                press: (){},
              ),
              MenuItems(
                title: 'Cart',
                press: (){},
              ),
              MenuItems(
                title: 'Privacy',
                press: (){},
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffE6E6E6),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Logout',
                        style: primaryTextStyle.copyWith(
                          color: const Color(0xffFF6584),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Image.asset(
                        'assets/images/button_exit.png',
                        width: 20,
                      )
                    ]
                  ),
                ),
              )
            ]
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}