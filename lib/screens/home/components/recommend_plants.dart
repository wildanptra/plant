import 'package:flutter/material.dart';
import 'package:plant/screens/details/detail_screen.dart';

import 'package:plant/theme.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const DetailScreen() 
                )
              );
            }
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 350,
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const DetailScreen() 
                )
              );
            }
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Raflesia Arnoldi",
            country: "Indonesian",
            price: 740,
            press: (){}
          ),
        ]
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {

  final String image,title, country;
  final int price;
  final void Function() press;

  const RecommendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5, 
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ]
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:Column(
                        children: [
                          Text(
                            "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            country.toUpperCase(),
                            style: TextStyle(
                              color: primaryColor.withOpacity(0.5)
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button?.copyWith(color: primaryColor),
                  )
                ],
              ),
            ),
          )
        ]
      ),
    );
  }
}