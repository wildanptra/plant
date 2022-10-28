import 'package:flutter/material.dart';
import 'package:plant/screens/cart/components/cart_card.dart';
import 'package:plant/theme.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    AppBar header(){
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'My Cart',
        ),
        elevation: 0,
      );
    }

    Widget emptyCart(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cart_empty.png',
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: primaryDarkTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s save our planet!',
              style: primaryTextStyle.copyWith(
                color: const Color(0xff999999),
              ),
            ),
            Container(
              width: 154,
              height: 44,
              margin: const EdgeInsets.only(
                top: defaultPadding,
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                child: Text(
                  'Explore Now',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content(){
      return ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding + 10,
        ),
        children: const [
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget customButtonNav(){
      return Container(
        margin: const EdgeInsets.only(
          top: defaultPadding
        ),
        height: 215,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    '\$287,96',
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    '\$10,00',
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 0.3,
              color: Color(0xffE6E6E6),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    '\$297,96',
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]
        ),
      );
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      // body: emptyCart(),
      body: content(),
      appBar: header(),
      bottomNavigationBar: customButtonNav(),
    );
  }
}