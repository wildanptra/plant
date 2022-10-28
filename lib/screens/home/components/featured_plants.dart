import 'package:flutter/material.dart';

import 'package:plant/theme.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: (){},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {

  final String image;
  final void Function() press;

  const FeaturePlantCard({
    super.key,
    required this.image,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          )
        ),
      ),
    );
  }
}