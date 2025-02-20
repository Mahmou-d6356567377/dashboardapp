import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title,required this.onTap,required this.color,required this.titleColor,
  });

  final String title;
  final void Function()? onTap;
  final Color? color;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyles.styleBold16.copyWith(color: titleColor),
          )),
    );
  }
}
