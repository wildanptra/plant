import 'package:flutter/material.dart';
import 'package:plant/theme.dart';

class DescriptionModal extends StatelessWidget {
  const DescriptionModal({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.6,
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description",
                style: primaryDarkTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height:5 ,
              ),
              Text(
                "Angelica - Russia",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffA6A6A6),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "It is a perennial plant that grows to about 1 - 2 meters tall. The plant usually has a brown cylindrical root that grows approximately 2 - 5 cm thick.[6] The stem is purplish-green in color, ribbed, and it usually ranges from 2 - 8 cm thick in diameter. First year plants remain in a basal clump about 30 inches high, fuller in rich soil, with complex divided leaves 10-20 inches long, and reddish-purple coloring at the base. In the second or third year plant, the plant sends up a sturdy, hollow one-inch diameter stalk to 8 feet. The plant produces greenish-white flowers on umbels up to 12 inches in diameter that bloom in the summer,  from July to August or September. The seeds of the plant follow, turning from greenish-white to medium brown and papery as they ripen from August to October.[7] The flowers of the plant are hermaphroditic (containing both male and female reproductive organs) and are pollinated via insects. The plant also undergoes self pollination. The roots and leaves of the plant are strongly aromatic. The roots have a scent resembling that of wild Queen Annes's lace (Daucus carota), and a pungent, bitter taste.[8] It is a perennial plant that grows to about 1 - 2 meters tall. The plant usually has a brown cylindrical root that grows approximately 2 - 5 cm thick.[6] The stem is purplish-green in color, ribbed, and it usually ranges from 2 - 8 cm thick in diameter. First year plants remain in a basal clump about 30 inches high, fuller in rich soil, with complex divided leaves 10-20 inches long, and reddish-purple coloring at the base. In the second or third year plant, the plant sends up a sturdy, hollow one-inch diameter stalk to 8 feet. The plant produces greenish-white flowers on umbels up to 12 inches in diameter that bloom in the summer,  from July to August or September. The seeds of the plant follow, turning from greenish-white to medium brown and papery as they ripen from August to October.[7] The flowers of the plant are hermaphroditic (containing both male and female reproductive organs) and are pollinated via insects. The plant also undergoes self pollination. The roots and leaves of the plant are strongly aromatic. The roots have a scent resembling that of wild Queen Annes's lace (Daucus carota), and a pungent, bitter taste.[8]",
                style: primaryDarkTextStyle,
              )
            ]
          ),
        ),
      ),
    );
  }
}