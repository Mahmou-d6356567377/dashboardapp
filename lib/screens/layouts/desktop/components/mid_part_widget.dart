
import 'package:dashboardapp/screens/layouts/desktop/components/titled_text_field.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/custom_background_container.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/custom_button.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/drag_menu.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/first_row.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/second_row.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/transaction_row.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class MidPartWidget extends StatefulWidget {
  const MidPartWidget({
    super.key,
  });

  @override
  State<MidPartWidget> createState() => _MidPartWidgetState();
}

class _MidPartWidgetState extends State<MidPartWidget> {
  bool flag1 = true;
  bool flag2 = false;
  bool flag3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      color: backgroundColor,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: CustomBackGroundContainer(
              child:  Column(
                children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: FirstRow(firstwidget: Text("All Expenses ",
                      style: TextStyles.styleMedium16,), secondwidget: DragMenuWidget()),
                    ),
                   SecondRow(),
                ],
              ),
              ),
          ),
         Expanded(
          flex: 7,
           child: CustomBackGroundContainer(
            child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: FirstRow(
                firstwidget: Text(
                  "Quick Invoice ",
                  style: TextStyles.stylesimibold16
                      .copyWith(color: darkblueColor2),
                ),
                secondwidget: CircleAvatar(
                  backgroundColor: backgroundColor,
                  child: Icon(
                    Icons.add,
                    color: blueColor,
                  ),
                ),
              ),
            ),
            Text(
              "Latest Transaction",
              style: TextStyles.styleReguler16
                  .copyWith(fontWeight: FontWeight.bold, color: darkblueColor2),
            ),
            TransactionRow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                color: Color(0xffF1F1F1),
              ),
            ),
            Row(children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(children: [
                  TitledTextField(
                    hinttext: "Amount",
                    title: "Amount",
                  ),
                  TitledTextField(
                    hinttext: "Description",
                    title: "Description",
                  ),

                  CustomButton(title: "Add more details", color: Colors.white, onTap: (){},titleColor: Colors.black,),
                ]),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(children: [
                  TitledTextField(
                    hinttext: "Amount",
                    title: "Amount",
                  ),
                  TitledTextField(
                    hinttext: "Description",
                    title: "Description",
                  ),
                  CustomButton(title: "Send Money", color: blueColor, onTap: (){}, titleColor: Colors.white,),
                ]),
              )),
            ]),
          ],
        ),
      ),
      ),
         ),
      ],
      ),
    );
  }
}

