import 'package:dashboardapp/utils/app_images.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(color: backgroundColor,
      borderRadius: BorderRadius.circular(17)),
      child: ListTile(
        leading:  CircleAvatar(
        child: SvgPicture.asset(Assets.imagesAvatar1),
      ),
      title: Text('John Doe'),
      subtitle: Text('Admin'),
      ),
    );
    
      }
}