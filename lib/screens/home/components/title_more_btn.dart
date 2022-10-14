import 'package:flutter/material.dart';

import 'package:plant/theme.dart';

class TitleMoreBtn extends StatelessWidget {

  final String title;
  final void Function() press;

  const TitleMoreBtn({
    super.key,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            onPressed: press,
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            )
          )
        ]
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {

  final String text;

  const TitleWithCustomUnderline({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: defaultPadding / 4,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
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
              height: 7,
              color: primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}