import 'package:flutter/material.dart';
import 'package:plant/theme.dart';

class NotificationModal extends StatelessWidget {
  
  const NotificationModal({super.key});
  
  @override
  Widget build(BuildContext context) {

   Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Text(
              "Notification",
              style: primaryDarkTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(5, (index) {
                  return const NotificationItemWidget(
                    colorImage:primaryColor,
                    image: 'assets/images/logo.png',
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItemWidget extends StatelessWidget {
  final String image;
  final Color colorImage;

  const NotificationItemWidget({
    super.key,
    required this.image,
    required this.colorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(color: colorImage, borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              width: 50,
              child: Image.asset(
                image,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Complete",
                style: primaryDarkTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Order with code A7X6969 is complete",
                style: primaryDarkTextStyle.copyWith(
                  fontSize: 12,
                  color: const Color(0xffA6A6A6),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}