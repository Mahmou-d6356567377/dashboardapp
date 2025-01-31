import 'dart:developer';

import 'package:flutter/material.dart';

class AdabtiveLayoutBuilder extends StatelessWidget {
  const AdabtiveLayoutBuilder(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desktoplayout});
  final WidgetBuilder mobilelayout;
  final WidgetBuilder tabletlayout;
  final WidgetBuilder desktoplayout;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        log( constraints.maxWidth.toString());
         if(constraints.maxWidth > 900) {
          return desktoplayout(context);
        } else if (constraints.maxWidth > 500) {
          return tabletlayout(context);
        }else {
          return mobilelayout(context);
        }
      }),
    );
  }
}
