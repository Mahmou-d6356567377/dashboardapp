
import 'package:dashboardapp/screens/layouts/desktop/components/card_section.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/custom_pie_chart.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/detailed_chart_widget.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/drag_menu.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/first_row.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/transaction_list_view.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LastPartWidget extends StatelessWidget {
  const LastPartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            MyCardSection(),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction History", style: TextStyles.stylesimibold18, ),
                  Text("See all", style: TextStyles.styleMedium16.copyWith(color: blueColor),)
                ],
              ),
            ),
           Expanded(
            flex:4,
             child: TransactionListView(),
           ),
           Expanded(
            flex: 4,
            child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10.0),
                 child: FirstRow(firstwidget: Text("Income",style: TextStyles.styleMedium16,), secondwidget: DragMenuWidget()),
               ),

               DetailedChartWidget(),
          
          ],
        ),
      ),
          ]
    ),
      ),
    );
  }
}
