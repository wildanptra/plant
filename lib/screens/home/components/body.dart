import 'package:flutter/material.dart';
import 'package:plant/screens/home/components/featured_plants.dart';
import 'package:plant/screens/home/components/header_searchbox.dart';
import 'package:plant/screens/home/components/recommend_plants.dart';
import 'package:plant/screens/home/components/title_more_btn.dart';

import 'package:plant/theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderSearchbox(size: size),
          TitleMoreBtn(
            title: "Recommended",
            press: () {
              Navigator.pushNamed(context, '/recommend');
            }
          ),
          const RecommendPlants(),
          TitleMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}