import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/theme.dart';

class HeaderSearchbox extends StatelessWidget {
  final Size size;
  
  const HeaderSearchbox({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: defaultPadding  * 2.5,
      ),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              bottom: 36 + defaultPadding,
            ),
            height: size.height * 0.2 - 25,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Hi, Wildan Pratama',
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Welcome Back, Let\'s Save Our Planet!',
                      style: TextStyle(
                        color: Color(0xffECEDEF),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: defaultPadding
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding
              ),
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
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
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}