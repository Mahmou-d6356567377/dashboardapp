import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class DragMenuWidget extends StatefulWidget {
  const DragMenuWidget({
    super.key,
  });

  @override
  State<DragMenuWidget> createState() => _DragMenuWidgetState();
}

class _DragMenuWidgetState extends State<DragMenuWidget> {
   String? type = "Monthly";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton(
        value: type,
        underline: null,
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          items: [
            DropdownMenuItem(value: "Yearly",child: Text("Yearly",
        style: TextStyles.styleMedium16.copyWith(color: Colors.black),),),
            DropdownMenuItem(value: "Monthly", child: Text("Monthly",
        style: TextStyles.styleMedium16.copyWith(color: Colors.black),)),
            DropdownMenuItem(value: "Weekly", child: Text("Weekly",
        style: TextStyles.styleMedium16.copyWith(color: Colors.black),)),
            DropdownMenuItem(value: "Daily",child: Text("Daily",
        style: TextStyles.styleMedium16.copyWith(color: Colors.black),),),
          ],
          onChanged: (value) {
            setState(() {
              type = value;
            });
          }),
    );
  }
}
