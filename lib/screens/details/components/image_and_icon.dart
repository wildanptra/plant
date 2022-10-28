import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/screens/details/components/icon_card.dart';

import 'package:plant/theme.dart';

class ImageAndIcon extends StatelessWidget {

  final Size size;

  const ImageAndIcon({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2), 
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding
                        ),
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const IconCard(icon: "assets/icons/icon_2.svg"),
                    const IconCard(icon: "assets/icons/icon_3.svg"),
                    const IconCard(icon: "assets/icons/icon_4.svg"),
                  ]
                ),
              ),
            ),
            Container(
              height: size.height * 0.75,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: primaryColor.withOpacity(0.30),
                  ),
                ],
                image: const DecorationImage(
                  image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding,
                      vertical: defaultPadding * 2,
                    ),
                    icon: SvgPicture.asset('assets/icons/cart-dark.svg'),
                    onPressed: (){
                      Navigator.pushNamed(context, '/cart');
                    },
                  ),
                ],
              ),
            ),
          ],
        ), 
      ),
    );
  }
}
