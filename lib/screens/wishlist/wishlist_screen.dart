import 'package:flutter/material.dart';
import 'package:plant/screens/wishlist/components/wishlist_card.dart';
import 'package:plant/theme.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: const Text(
          'Favorite Plants',
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishList(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/love.png',
                width: 100,
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                'you don\'t have a favorite plant',
                style: primaryDarkTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Let\'s save our planet!',
                style: primaryDarkTextStyle.copyWith(
                  color: const Color(0xff999999),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  onPressed: () {},
                  child: Text(
                    'Explore Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ), 
                ),
              ),
            ],
          ),
        ) 
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding + 10,
            ),
            children: const [
              WishlistCard(image: 'assets/images/image_1.png', name: 'Angelica', price: 143.98),
              WishlistCard(image: 'assets/images/image_1.png', name: 'Angelica', price: 143.98),
              WishlistCard(image: 'assets/images/image_1.png', name: 'Angelica', price: 143.98),
              WishlistCard(image: 'assets/images/image_1.png', name: 'Angelica', price: 143.98),
            ],
          ),    
        ),
      );
    }
    
    return Column(
      children: [
        header(),
        // emptyWishList(),
        content(),
      ],
    );

  }
}