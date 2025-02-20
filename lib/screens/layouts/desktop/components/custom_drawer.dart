import 'package:dashboardapp/models/list_tile_model.dart';
import 'package:dashboardapp/utils/app_images.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/widgets/custom_list_tile.dart';
import 'package:dashboardapp/widgets/list_of_listtiles.dart';
import 'package:dashboardapp/widgets/user_info_ListTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
   
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      color: primaryColor,
      child: SingleChildScrollView(
        child: Column(
        
          children: [
          UserInfoListtile(),
          ListOfListTiles(),
          SizedBox(
            height: width * 0.12,
          ),
          CustomListTile(listTileModel: ListTileModel(title: 'Settings System', image: Assets.imagesSettings), isactive: false,),
          CustomListTile(listTileModel: ListTileModel(title: 'Logout', image: Assets.imagesLogout),isactive: false,),
          SizedBox(height: width * 0.03,)
        ]),
      ),
    );
  }
}
