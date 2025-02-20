import 'package:dashboardapp/screens/layouts/desktop/widget/second_row_widget.dart';
import 'package:dashboardapp/utils/app_images.dart';
import 'package:flutter/material.dart';

class SecondRow extends StatefulWidget {
  const SecondRow({
    super.key,
  });

  @override
  State<SecondRow> createState() => _SecondRowState();
}

class _SecondRowState extends State<SecondRow> {
   bool flag1 = true;
    bool flag2 = false;
    bool flag3 = false;
  @override
  Widget build(BuildContext context) {
   
return Expanded(
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      flag1 = true;
                      flag2 = false;
                      flag3 = false;
                    });
                  },
                  child: SecondRowWidget(
                    img: Assets.imagesBalance,
                    title: "Balance",
                    subtitle: "April 2022",
                    cost: "\$ 12,000",
                    flag: flag1,
                  ))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                       flag1 = false;
                    flag2 = true;
                    flag3 = false;
                    });
                   
                  },
                  child: SecondRowWidget(
                    img: Assets.imagesIncome,
                    title: "Income",
                    subtitle: "April 2022",
                    cost: "\$ 12,000",
                    flag: flag2,
                  ))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      flag1 = false;
                    flag2 = false;
                    flag3 = true;
                    });
                    
                  },
                  child: SecondRowWidget(
                    img: Assets.imagesExpenses,
                    title: "Expanses",
                    subtitle: "April 2022",
                    cost: "\$ 12,000",
                    flag: flag3,
                  ))),
        ],
      ),
    );
  }
}
