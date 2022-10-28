import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/screens/details/detail_screen.dart';
import 'package:plant/screens/home/components/notification_modal.dart';
import 'package:plant/screens/home/components/recommend_plants.dart';
import 'package:plant/theme.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double itemHeight =  (size.height - kToolbarHeight - statusBarHeight) / 6;
    final double itemWidth = size.width / 2;

    Widget formSearch(){
      return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding
        ),
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 50,
              color: primaryColor.withOpacity(0.25),
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                onChanged: (value) {},
                style: primaryDarkTextStyle,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: primaryTextStyle.copyWith(
                    fontSize: 16,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/search.svg",
              width: 20,
            ),
          ],
        ),
      );
    }

    AppBar header(){
      return AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        titleSpacing: 0.0,
        leadingWidth: 25,
        title: formSearch(),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/notification.svg",
              width: 20,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context){
                  return const NotificationModal();
                }
              );
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/images/icon_cart.png',
              width: 20,
            ),
            onPressed: (){
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      );
    }

    Widget headingText(){
      return Container(
        margin: const EdgeInsets.only(
          left: defaultPadding / 2,
          bottom: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding / 4,
                  ),
                  child: Text(
                    'Recommended Plants',
                    style: primaryDarkTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: defaultPadding / 4
                    ),
                    height: 4,
                    color: primaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget body(){
      return SafeArea(
        child: Container(
          margin: const EdgeInsets.only(
            top: 12,
            left: defaultPadding,
            right: defaultPadding
          ),
          child: Column(
            children: [
              headingText(),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.55,
                    children: List.generate(6, (index) {
                      return GridList(
                        tag: "tag${index.toString()}",
                        image: "assets/images/image_1.png",
                        title: "SAMANTHA",
                        country: "RUSSIA",
                        price: 440
                      );
                    }),
                  ),
                ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: header(),
      body: body(),
    );
  }
}

class GridList extends StatelessWidget {
  
  final String tag, image, title, country;
  final double price;
  const GridList({
    super.key,
    required this.tag,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(defaultPadding / 2),
      child: GestureDetector(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16)
                  ),
                ),
                child: Hero(
                  tag: tag,
                  child: Image.asset(image),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 115,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                    color: primaryColor.withOpacity(0.15),
                  ),
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // products is out demo list
                    title,
                    style: primaryDarkTextStyle,
                  ),
                  Text(
                    country,
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$$price",
                        style: primaryTextStyle.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 33,
                        child: TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                          ),
                          child: Text(
                            'add cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}