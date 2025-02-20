import 'package:dashboardapp/models/transaction_model.dart';
import 'package:dashboardapp/screens/layouts/desktop/widget/custom_transaction_widget.dart';
import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TransactionModel> tranactionlist = [
      TransactionModel(title: "Cash withdrawal", subtitle: "13 April, 2022 At 3:30 AM", value: "\$ 2,000"),
      TransactionModel(title: "Cash withdrawal", subtitle: "12 April, 2022 At 2:30 AM", value: "\$ 5,000"),
      TransactionModel(title: "Cash withdrawal", subtitle: "15 April, 2022 At 3:50 AM", value: "\$ 87,000"),
      TransactionModel(title: "Cash withdrawal", subtitle: "16 April, 2022 At 1:10 AM", value: "\$ 4,000"),
    ];
    return ListView.builder(
      itemCount: tranactionlist.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomTransactionWidget(
          tranactoin: tranactionlist[index],
             );
      },
    );
  }
}
