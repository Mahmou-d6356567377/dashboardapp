import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/widgets/custom_drawer.dart';
import 'package:dashboardapp/widgets/last_part_widget.dart';
import 'package:dashboardapp/widgets/mid_part_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(children:  [
        Expanded(
          flex: 2,
          child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: MidPartWidget(),
        ),
      
      Expanded(
        flex: 3,
          child: lastPartWidget(),
        ),
      
      ],),
    );
  }
}
