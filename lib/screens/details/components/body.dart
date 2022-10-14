import 'package:flutter/material.dart';
import 'package:plant/screens/details/components/description_modal.dart';
import 'package:plant/screens/details/components/image_and_icon.dart';
import 'package:plant/screens/details/components/tile_and_price.dart';
import 'package:plant/theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 75,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      )
                    )
                  ),
                  onPressed: (){},
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 75,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: backgroundColor,
                  ),
                  onPressed: (){
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (builder){
                        return const DescriptionModal(); 
                      }
                    );
                  },
                  child: const Text(
                    "Description",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}