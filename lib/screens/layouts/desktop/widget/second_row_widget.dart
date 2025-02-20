import 'package:dashboardapp/utils/app_images.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.cost, required this.flag,
  });
  final String img;
  final String title;
  final String subtitle;
  final String cost;
  final bool flag;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.all(15),
        constraints: BoxConstraints(
          maxHeight: double.infinity,
        ),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: flag? blueColor : Colors.grey.shade400,
          ),
          color: flag ? blueColor : Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: backgroundColor,
                  child: SvgPicture.asset(Assets.imagesBalance),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, 
                color: flag ? Colors.white : Colors.black,),
              ],
            ),
            Spacer(),
            Text(
              "Income",
              style: TextStyles.styleMedium20.copyWith(color: flag ? Colors.white : Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "April 2022 ",
                style: flag ? TextStyles.styleReguler14.copyWith(color: Colors.white) : TextStyles.styleReguler14,
              ),
            ),
            Text(
              "\$ 2,500.00",
              style: TextStyles.styleBold16.copyWith(color: flag ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
