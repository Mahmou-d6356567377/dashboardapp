import 'package:dashboardapp/models/list_tile_model.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.listTileModel, required this.isactive,});

  final ListTileModel listTileModel;
  final bool isactive ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset(listTileModel.image),
        ),
        title: Text(
          listTileModel.title,
          style: isactive ?TextStyles.styleBold16: TextStyles.styleMedium16
        ),
        trailing: isactive ? Container(
          width: 3.27,
          decoration: const BoxDecoration(
            color: blueColor
          ),
        ): null,
      ),
    );
  }
}
