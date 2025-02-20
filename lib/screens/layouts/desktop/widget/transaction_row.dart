import 'package:dashboardapp/models/transaction_widget_model.dart';
import 'package:dashboardapp/screens/layouts/desktop/components/transaction_widget.dart';
import 'package:dashboardapp/utils/app_images.dart';
import 'package:flutter/material.dart';

class TransactionRow extends StatelessWidget {
  const TransactionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List <TransactionWidgetModel> transactions = [
      TransactionWidgetModel(img: Assets.imagesAvatar1, title: "John Doe", subtitle: "Madraniadi80@gmail.com"),
      TransactionWidgetModel(img: Assets.imagesAvatar2, title: "John Doe", subtitle: "Madraniadi80@gmail.com"),
      TransactionWidgetModel(img: Assets.imagesAvatar3, title: "John Doe", subtitle: "Madraniadi80@gmail.com"),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 80,
        child: Row(
          children: [
           Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => TransactionWidget(transactionWidgetModel: transactions[index]), itemCount: transactions.length,)),
          ],
        ),
      ),
    );
  }
}
