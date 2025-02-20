
import 'package:dashboardapp/utils/constants.dart';
import 'package:dashboardapp/utils/font_styles.dart';
import 'package:flutter/material.dart';

class TitledTextField extends StatelessWidget {
  const TitledTextField({
    super.key, required this.title, required this.hinttext,
  });
final String title;
final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyles.styleReguler16.copyWith(fontWeight: FontWeight.bold,
        color: darkblueColor2),),
    
        SizedBox(
           height: 70,
          child: TextField(
          
            decoration: InputDecoration(
            
              hintText: hinttext,
              hintStyle: TextStyles.styleReguler14.copyWith(color: Colors.blueGrey.shade400),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: Colors.grey.shade100,
              filled: true,
            ),
          ),
        )
    ]);
  }
}

