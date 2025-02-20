import 'dart:async';

import 'package:dashboardapp/screens/layouts/desktop/widget/my_card_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsPageview extends StatelessWidget {
  const MyCardsPageview({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      allowImplicitScrolling: true,
      controller: pageController,
      itemBuilder: (context, index) => MyCardWidget(),
      itemCount: 3,
      scrollDirection: Axis.horizontal,
    );
  }
}
