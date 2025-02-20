import 'dart:async';

import 'package:dashboardapp/screens/layouts/desktop/widget/my_cards_pageview.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageconroller;
  late Timer _timer;
  int currentpage = 0;

  @override
  void initState() {
    super.initState();
    pageconroller = PageController();
    _autoScrollPageWidget(pageconroller, 3);
  }

  void _autoScrollPageWidget(PageController pagecontroller, int pagecount) {
   
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
    if (!pagecontroller.hasClients) return;
     int nextpage = ((pagecontroller.page?.round() ?? 0) + 1)%pagecount;
    
      pagecontroller.animateToPage(
        nextpage,
          duration: Duration(milliseconds: 900), 
          curve: Curves.linear);
    });
  }

  @override
  void dispose() {
   if (_timer.isActive) {
    _timer.cancel(); 
  }
    pageconroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "My Card",
        style: TextStyles.styleBold16.copyWith(color: Colors.black),
      ),
      MyCardsPageview(pageController: pageconroller),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SmoothPageIndicator(
          controller: pageconroller,
          count: 3,
          effect: ExpandingDotsEffect(
            spacing: 5,
            dotWidth: 10,
            dotHeight: 10,
            dotColor: const Color.fromARGB(31, 216, 50, 50),
            activeDotColor: blueColor,
          ),
        ),
      ),
    ]);
  }
}
