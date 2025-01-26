import 'package:flutter/material.dart';

class AdabtiveLayoutBuilder extends StatelessWidget {
  const AdabtiveLayoutBuilder({super.key, required this.mobilelayout, required this.tabletlayout, required this.desktoplayout});
  final WidgetBuilder  mobilelayout;
  final WidgetBuilder tabletlayout;
  final WidgetBuilder desktoplayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 500) {
        return mobilelayout(context);
      } else if (constraints.maxWidth <= 900) {
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
