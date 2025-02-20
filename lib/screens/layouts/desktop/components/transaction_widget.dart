import 'package:dashboardapp/models/transaction_widget_model.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
    required this.transactionWidgetModel,
  });
  final TransactionWidgetModel transactionWidgetModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
        ),
        child: IntrinsicWidth(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: backgroundColor,
              child: SvgPicture.asset(transactionWidgetModel.img),
            ),
            title: Text(
              transactionWidgetModel.title,
              style: TextStyles.styleBold16.copyWith(color: darkblueColor),
            ),
            subtitle: Text(
              transactionWidgetModel.subtitle,
              style: TextStyles.styleReguler14,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
