import 'package:dashboardapp/models/transaction_model.dart';
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomTransactionWidget extends StatelessWidget {
  const CustomTransactionWidget({
    super.key,
    required this.tranactoin
  });
  final TransactionModel tranactoin;
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          tranactoin.title,
          style: TextStyles.styleMedium16,
        ),
        subtitle: Text(
         tranactoin.subtitle,
          style: TextStyles.styleReguler14,
        ),
        trailing: Text(
          tranactoin.value,
          style: TextStyles.styleBold16,
        ),
      ),
    );
  }
}
//'Cash withdrawal'
//'13 April, 2022 At 3:30 AM'
//"\$ 2,000"
