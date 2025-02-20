
import 'package:dashboardapp/utils/app_images.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 420/180,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: blueColor,
      image: DecorationImage(
        image: AssetImage(Assets.imagesCardBackground),
      fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const  EdgeInsets.only(left: 31, right: 20, bottom: 10),
        child: Column(
          children: [
            ListTile(
              title: Text("Name Card",style: TextStyles.styleBold16.copyWith(color: Colors.white),),
              subtitle: Text("Sayha Bandi",style: TextStyles.styleMedium20.copyWith(color: Colors.white),),
              trailing: SvgPicture.asset(Assets.imagesWalletAccount, colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("99889 4839 34353 3003",style: TextStyles.styleMedium16.copyWith(color: const Color.fromARGB(255, 244, 241, 241)),),
               
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("12/24 - 124",style: TextStyles.styleMedium16.copyWith(color: const Color.fromARGB(255, 232, 228, 228)),),
               
              ],
            ),
          ],
        ),
      ),
       ),
       );
  }
}
